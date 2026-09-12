<?php
$file = __DIR__ . '/test-output.txt';
$result = file_put_contents($file,'test' .date('Y-m-d- H/i/s'));
echo $result !== false ? "succes ecriture <br>" : "ECHEC ecriture <br>";
echo "d" . ini_get('display_errors') . "<br>";
echo "e" . ini_get('error_log') . "<br>";
echo "l" . ini_get('log_errors') . "<br>";
trigger_error("Test - " . date('Y-m-d- H/i/s'), E_USER_WARNING);