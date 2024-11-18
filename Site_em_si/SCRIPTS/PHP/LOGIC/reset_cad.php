
<?php
$jsonDecoded = json_decode(file_get_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/bd_info.json"), true);
$jsonDecoded["cad_part"] = "1";
$jsonEncoded = json_encode($jsonDecoded, JSON_PRETTY_PRINT);
file_put_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/bd_info.json", $jsonEncoded);
header("Location: /FoxPath-Project/Site_em_si/SCRIPTS/PHP/main.php");
