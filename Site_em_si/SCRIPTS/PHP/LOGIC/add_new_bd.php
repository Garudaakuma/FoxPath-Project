
<?php
$contentJson = file_get_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/bd_info.json");
if ($contentJson === false) {
    die("Error reading json file");
}
echo "<pre>";
print_r($contentJson);
echo "</pre>";
$jsonDataDecoded = json_decode($contentJson, true);
if ($jsonDataDecoded === null) {
    die("Error decoding JSON file");
}
echo "<pre>";
print_r($jsonDataDecoded);
echo "</pre>";
$jsonDataDecoded['mySql'] = $_POST;
echo "<pre>";
print_r($jsonDataDecoded);
echo "</pre>";
file_put_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/bd_info.json", json_encode($jsonDataDecoded));
header("Location: connection.php");
