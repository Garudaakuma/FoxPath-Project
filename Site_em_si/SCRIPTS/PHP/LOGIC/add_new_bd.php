
<?php
$jsonDataDecoded = json_decode(file_get_contents("/FoxPath-Project/Site_em_si/JSON/bd_info.json"), true);
$jsonDataDecoded['mySql'] = $_POST;
print_r($jsonDataDecoded);
file_put_contents("/FoxPath-Project/Site_em_si/JSON/bd_info.json", json_encode($jsonDataDecoded));
header("Location: LOGIC/connection.php");
