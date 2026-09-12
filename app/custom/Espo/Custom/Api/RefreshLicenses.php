<?php
namespace Espo\Custom\Api;

use Espo\Core\Api\Action;
use Espo\Core\Api\Request;
use Espo\Core\Api\Response;
use Espo\Core\Api\ResponseComposer;
use Espo\Core\Acl;
use Espo\Core\Exceptions\Forbidden;
use Espo\ORM\EntityManager;

class RefreshLicenses implements Action
{
    public function __construct(
        private EntityManager $entityManager,
        private Acl $acl
    ) {}

    public function process(Request $request): Response
    {
        if (!$this->acl->checkScope('CSoftware', 'edit')) {
            throw new Forbidden();
        }

        $pdo = $this->entityManager->getPDO();

        // Total non-deleted rows, so the message can say "X of Y".
        $total = (int) $pdo->query(
            "SELECT COUNT(*) FROM c_software WHERE deleted = 0"
        )->fetchColumn();

        $sql = "
            UPDATE c_software
            SET
                days_remaining = DATEDIFF(license_expiry, CURDATE()),
                license_status = CASE
                    WHEN license_expiry IS NULL THEN 'No Expiry'
                    WHEN DATEDIFF(license_expiry, CURDATE()) > 30 THEN 'Active'
                    WHEN DATEDIFF(license_expiry, CURDATE()) BETWEEN 0 AND 30 THEN 'Expiring Soon'
                    ELSE 'Expired'
                END
            WHERE deleted = 0
        ";

        $sth = $pdo->prepare($sql);
        $sth->execute();

        return ResponseComposer::json([
            'success' => true,
            'updated' => $sth->rowCount(), // rows whose values actually changed
            'total'   => $total,           // rows checked
        ]);
    }
}