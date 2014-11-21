<?php

$nPathEnd = strpos( $_SERVER['SCRIPT_FILENAME'], '/admin/index.php' );
$sShopPath = substr( $_SERVER['SCRIPT_FILENAME'], 0, $nPathEnd );
include $sShopPath . '/modules/jxexcptns/application/views/admin/de/jxexcptns_lang.php';

?>