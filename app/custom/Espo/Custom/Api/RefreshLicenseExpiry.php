<?php
namespace Espo\Custom\Api;

use Espo\Core\Api\Action;
use Espo\Core\Api\Request;
use Espo\Core\Api\Response;
use Espo\Core\Api\ResponseComposer;
use Espo\Core\Acl;
use Espo\Core\Exceptions\Forbidden;
use Espo\ORM\EntityManager;

class RefreshLicenseExpiry implements Action
{
    public function __construct(
        private EntityManager $entityManager,
        private Acl $acl
    ) {}

    public function process(Request $request): Response
    {
        if (!$this->acl->checkScope('CLicenes', 'edit')) {
            throw new Forbidden();
        }

        $pdo = $this->entityManager->getPDO();

        // NOTE: adjust the table name and column names below if they differ
        // from what Entity Manager generated for your "CLicenes" entity.
        // Admin > Entity Manager > CLicenes > click a field > "Column Name"
        // shows you the real column name if it's not the obvious snake_case one.

        $total = (int) $pdo->query(
            "SELECT COUNT(*) FROM c_licenes WHERE deleted = 0"
        )->fetchColumn();

            $sql = "
                UPDATE c_licenes
                SET
                    days_remaining = CASE
                        WHEN license_expires = 'Never' THEN 'N/A'
                        WHEN STR_TO_DATE(license_expires, '%d/%m/%Y') IS NOT NULL
                            THEN DATEDIFF(STR_TO_DATE(license_expires, '%d/%m/%Y'), CURDATE())
                        ELSE NULL
                    END,
                    status = CASE
                        WHEN license_expires = 'Never' THEN 'Active'
                        WHEN license_expires IS NULL OR license_expires = '' THEN 'No Expiry'
                        WHEN STR_TO_DATE(license_expires, '%d/%m/%Y') IS NULL THEN 'No Expiry'
                        WHEN DATEDIFF(STR_TO_DATE(license_expires, '%d/%m/%Y'), CURDATE()) > 30 THEN 'Active'
                        WHEN DATEDIFF(STR_TO_DATE(license_expires, '%d/%m/%Y'), CURDATE()) BETWEEN 0 AND 30 THEN 'Expiring Soon'
                        ELSE 'Expired'
                    END
                WHERE deleted = 0
            ";

        $sth = $pdo->prepare($sql);
        $sth->execute();

        $updated = $sth->rowCount();

        return ResponseComposer::json([
            'success' => true,
            'updated' => $updated,
            'total'   => $total,
            'message' => "Updated {$updated} of {$total} licenses.",
        ]);
    }
}