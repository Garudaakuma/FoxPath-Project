
<?php
$jsonData = json_decode(file_get_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/bd_info.json"), true);
$server_info = [
    "servername"=>"{$jsonData["mySql"]["servername"]}",
    "username"=>"{$jsonData["mySql"]["username"]}",
    "password"=>"{$jsonData["mySql"]["password"]}",
    "database"=>"{$jsonData["mySql"]["database"]}",
    "port"=>"{$jsonData["mySql"]["port"]}"
];

if ($server_info["password"] === "****") {
    header("Location: /FoxPath-Project/Site_em_si/SCRIPTS/PHP/connection_error.php");
}

$conn = new mysqli( $server_info['servername'],
                    $server_info['username'],
                    $server_info['password'],
                    $server_info['database'],
                    $server_info['port']);

if ($conn->connect_error) {
    header("Location: /FoxPath-Project/Site_em_si/SCRIPTS/PHP/connection_error.php");
}

$jsonString = file_get_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/cad_save.json");
echo "jsonstring<pre>";
print_r($jsonString);
echo "</pre>";
$jsonDecoded = json_decode($jsonString, true);
echo "jsondecoded<pre>";
print_r($jsonDecoded);
echo "</pre>";
$data_cadastro = [
    $jsonDecoded["cad_part-1"],
    $jsonDecoded["cad_part-2"],
    $jsonDecoded["cad_part-3"]
];
echo "data_cadastro<pre>";
print_r($data_cadastro);
echo "</pre>";
$choicesArry = json_decode(file_get_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/tag.json"), true);
$KEYchoicePick = array_rand($choicesArry["tag"], 4);
echo "KeyChoice<pre>";
print_r($KEYchoicePick);
echo "</pre>";
$choicePick = [
    $choicesArry["tag"][$KEYchoicePick[0]],
    $choicesArry["tag"][$KEYchoicePick[1]],
    $choicesArry["tag"][$KEYchoicePick[2]],
    $choicesArry["tag"][$KEYchoicePick[3]]
];
echo "tag<pre>";
print_r($choicePick);
echo "</pre>";
$tag = "";
foreach ($choicePick as $cp) {
    $tag .= $cp;
}
echo "tag: $tag";
$nome = $data_cadastro[0]["nome"];
$data_nascimento = $data_cadastro[0]["data_nascimento"];
$email = $data_cadastro[0]["email"];
$nome = $data_cadastro[0]["nome"];
$nome = $data_cadastro[0]["nome"];
$sqlQuery_pt1 = "INSERT INTO pessoas(
    tag,
    nome,
    data_nasc,
    email,
    senha,
    num_telefone
)VALUES(
    $tag,
    $data_cadastro[0]['nome'],
    $data_cadastro[1]['data_nascimento'],
    $data_cadastro[0]['email'],
    $data_cadastro[2]['senha'],
    $data_cadastro[1]['numero_telefone']
)";

echo "<pre>";
echo $sqlQuery_pt1;
echo "</pre>";

if ($conn->query($sqlQuery_pt1)=== TRUE) {
    $last_id = $conn->insert_id;
    echo "New record created successfully. Last inserted ID is: ". $last_id;
} else {
    echo "Error: ". $sqlQuery_pt1. "<br>". $conn->error;
}

$conn->close();
