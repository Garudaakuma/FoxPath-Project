
<?php
$jsonDecoded = json_decode(file_get_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/cad_save.json"), true);
switch ($jsonDecoded["cad_part"]) {
    case "2":
        $jsonDecoded["cad_part"] = "1";
        break;
    case "3":
        $jsonDecoded["cad_part"] = "2";
        break;
}
echo "jsonDecoded<pre>";
print_r($jsonDecoded);
echo "</pre>";
$jsonEncoded = json_encode($jsonDecoded, JSON_PRETTY_PRINT);
echo "jsonEncoded<pre>";
print_r($jsonEncoded);
echo "</pre>";
file_put_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/cad_save.json", $jsonEncoded);
header("Location: /FoxPath-Project/Site_em_si/SCRIPTS/PHP/createAcount.php");
