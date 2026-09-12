<?php
namespace Espo\Custom\Hooks\CHRRequest;

class RecalculateDates
{
    public static $order = 10;

    private const API_URL = 'https://date.nager.at/api/v3/publicholidays';
    private const COUNTRY = 'MA'; // Maroc
    private const CACHE_DIR = 'data/cache/moroccoHolidays';
    private const CACHE_MAX_AGE_SECONDS = 2592000; // 30 jours : au-delà, on rafraîchit (nouveau jour annoncé par le gvt)

    /** @var array<string, true> Cache en mémoire (dates 'Y-m-d') pour la durée de la requête HTTP. */
    private array $joursFeriesCache = [];

    /** @var array<int, true> Suivi des années déjà chargées durant cette requête. */
    private array $loadedYears = [];

    public function beforeSave($entity, array $options = [])
    {
        // Si reporté avec une nouvelle date -> la date de début devient ce jour-là,
        // et la date de fin doit être recalculée pour conserver le même nombre de jours demandé.
        if ($entity->get('dcisionDemp') === 'Reporté' && $entity->get('reportuneDateUltrieure')) {
            $joursACaler = $entity->get('nombreJOD'); // nombre de jours déjà demandé, à conserver
            $nouveauDebut = $entity->get('reportuneDateUltrieure');

            $entity->set('dateDeDbut', $nouveauDebut);

            if ($joursACaler) {
                $entity->set('dateDeFin', $this->addWorkingDays($nouveauDebut, (int) $joursACaler));
            }
        }

        $start = $entity->get('dateDeDbut');
        $end = $entity->get('dateDeFin');

        if (!$start || !$end) {
            return;
        }

        $entity->set('nombreJOD', $this->countWorkingDays($start, $end));
    }

    private function addWorkingDays(string $startDate, int $workingDays): string
    {
        if ($workingDays < 1) {
            return $startDate;
        }

        $date = new \DateTime($startDate);
        $daysAdded = 1; // le jour de début compte comme le 1er jour

        while ($daysAdded < $workingDays) {
            $date->modify('+1 day');
            $dow = (int) $date->format('N'); // 1=lundi ... 7=dimanche
            if ($dow < 6 && !$this->isJourFerie($date)) {
                $daysAdded++;
            }
        }

        return $date->format('Y-m-d');
    }

    private function countWorkingDays(string $startDate, string $endDate): int
    {
        $start = new \DateTime($startDate);
        $end = new \DateTime($endDate);

        // au cas où les dates seraient inversées
        if ($end < $start) {
            [$start, $end] = [$end, $start];
        }

        $count = 0;
        $current = clone $start;

        while ($current <= $end) {
            $dow = (int) $current->format('N'); // 1=lundi ... 7=dimanche
            if ($dow < 6 && !$this->isJourFerie($current)) {
                $count++;
            }
            $current->modify('+1 day');
        }

        return $count;
    }

    private function isJourFerie(\DateTime $date): bool
    {
        $year = (int) $date->format('Y');
        $this->ensureYearLoaded($year);

        return isset($this->joursFeriesCache[$date->format('Y-m-d')]);
    }

    /**
     * S'assure que la liste des jours fériés marocains pour l'année donnée est chargée
     * (depuis le cache disque, sinon depuis l'API date.nager.at, gratuite et sans clé).
     */
    private function ensureYearLoaded(int $year): void
    {
        if (isset($this->loadedYears[$year])) {
            return;
        }
        $this->loadedYears[$year] = true;

        $dates = $this->getYearHolidaysFromDiskCache($year);

        if ($dates === null) {
            $dates = $this->fetchYearHolidaysFromApi($year);

            if ($dates !== null) {
                $this->saveYearHolidaysToDiskCache($year, $dates);
            }
        }

        // Filet de sécurité si l'API et le cache sont tous deux indisponibles
        // (ex: coupure réseau ponctuelle) : au moins les jours fixes, pour ne jamais bloquer un calcul.
        if ($dates === null) {
            $dates = $this->fallbackFixedHolidays($year);
        }

        foreach ($dates as $d) {
            $this->joursFeriesCache[$d] = true;
        }
    }

    /**
     * Lit le cache disque data/cache/moroccoHolidays/{year}.json s'il existe et n'est pas trop vieux.
     * @return string[]|null Liste de dates 'Y-m-d', ou null si absent/expiré.
     */
    private function getYearHolidaysFromDiskCache(int $year): ?array
    {
        $path = self::CACHE_DIR . "/{$year}.json";

        if (!file_exists($path)) {
            return null;
        }

        // Pour l'année en cours, on rafraîchit tous les 30 jours (au cas où une date serait
        // confirmée/ajustée entre-temps, ex: Aïd confirmé officiellement). Années passées : figé.
        $isCurrentYear = $year === (int) date('Y');
        if ($isCurrentYear && (time() - filemtime($path)) > self::CACHE_MAX_AGE_SECONDS) {
            return null;
        }

        $content = file_get_contents($path);
        $data = json_decode($content, true);

        return is_array($data) ? $data : null;
    }

    private function saveYearHolidaysToDiskCache(int $year, array $dates): void
    {
        if (!is_dir(self::CACHE_DIR)) {
            @mkdir(self::CACHE_DIR, 0775, true);
        }

        @file_put_contents(self::CACHE_DIR . "/{$year}.json", json_encode($dates));
    }

    /**
     * Appelle l'API gratuite date.nager.at (aucune clé requise, pas de limite de requêtes)
     * pour récupérer tous les jours fériés officiels du Maroc pour une année donnée.
     * @return string[]|null Liste de dates 'Y-m-d', ou null en cas d'échec réseau.
     */
    private function fetchYearHolidaysFromApi(int $year): ?array
    {
        $url = self::API_URL . "/{$year}/" . self::COUNTRY;

        $response = $this->httpGet($url);

        if ($response === null) {
            return null;
        }

        $data = json_decode($response, true);

        if (!is_array($data)) {
            return null;
        }

        $dates = [];
        foreach ($data as $holiday) {
            if (!empty($holiday['date'])) {
                $dates[] = $holiday['date']; // déjà au format 'Y-m-d'
            }
        }

        return $dates;
    }

    private function httpGet(string $url): ?string
    {
        if (function_exists('curl_init')) {
            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 8);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, ['Accept: application/json']);
            $result = curl_exec($ch);
            $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);

            if ($result === false || $httpCode !== 200) {
                return null;
            }

            return $result;
        }

        // Fallback si cURL n'est pas disponible.
        $context = stream_context_create(['http' => ['timeout' => 8]]);
        $result = @file_get_contents($url, false, $context);

        return $result !== false ? $result : null;
    }

    /**
     * Filet de sécurité minimal (jours fixes uniquement) si l'API et le cache disque
     * sont tous deux indisponibles. Évite de bloquer les calculs de dates en cas de panne réseau.
     */
    private function fallbackFixedHolidays(int $year): array
    {
        $monthDays = [
            '01-01', '01-11', '05-01', '07-30', '08-14',
            '08-20', '08-21', '11-06', '11-18',
        ];

        return array_map(fn($md) => "{$year}-{$md}", $monthDays);
    }
}