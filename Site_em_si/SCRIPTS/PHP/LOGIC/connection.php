
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
$data_nascimento = $data_cadastro[1]["data_nascimento"];
$email = $data_cadastro[0]["email"];
$senha = $data_cadastro[2]["senha"];
$numero_telefone = $data_cadastro[1]["numero_telefone"];
$sqlQuery_part1 = "INSERT INTO pessoas(
    tag,
    nome,
    data_nasc,
    email,
    senha,
    num_telefone
)VALUES(
    '{$tag}',
    '{$nome}',
    '{$data_nascimento}',
    '{$email}',
    '{$senha}',
    '{$numero_telefone}'
)";

echo "<pre>";
echo $sqlQuery_part1;
echo "</pre>";

if ($conn->query($sqlQuery_part1)=== TRUE) {
    $last_pt1_id = $conn->insert_id;
    echo "New record created successfully. Last inserted ID is: ". $last_pt1_id;
} else {
    echo "Error: ". $sqlQuery_part1. "<br>". $conn->error;
}

$nacionalidade = $data_cadastro[1]["nacionalidade"];
$sqlQuery_part2 = "INSERT INTO usuarios(
    id_pessoa,
    nacionalidade
) VALUES (
    '{$last_pt1_id}',
    '{$nacionalidade}'
)
";

if ($conn->query($sqlQuery_part2)=== TRUE) {
    $last_pt2_id = $conn->insert_id;
    echo "New record created successfully. Last inserted ID is: ". $last_pt2_id;
} else {
    echo "Error: ". $sqlQuery_part2. "<br>". $conn->error;
}

if ($data_cadastro[0]["fluente_bool"] === "true") {
    $idioma_fluente = $data_cadastro[1]["idioma_fluente"];
    $sqlQuery_part3 = "INSERT INTO fluentes (
        id_usuarios
        idioma_fluente
    ) VALUES (
        '{$last_pt2_id}',
        '{$idioma_fluente}'
    )
    ";
    if ($conn->query($sqlQuery_part3)=== TRUE) {
        $last_pt3_id = $conn->insert_id;
        echo "New record created successfully. Last inserted ID is: ". $last_pt3_id;
    } else {
        echo "Error: ". $sqlQuery_part3. "<br>". $conn->error;
    }
    $certificado_nome = $data_cadastro[1]["certificado_nome"];
    $certificado_data_emissao = $data_cadastro[1]["certificado_data_emissao"];
    $certificado_data_expiracao = $data_cadastro[1]["certificado_data_expiracao"];
    $sqlQuery_part4 = "INSERT INTO certificado(
        id_fluente,
        nome,
        pdf_certificado,
        data_emissao,
        data_expiracao
    )VALUES(
        '{$last_pt3_id}',
        '{$certificado_nome}',
        NULL,
        '{$certificado_data_emissao}',
        '{$certificado_data_expiracao}'
    )
    ";
    if ($conn->query($sqlQuery_part4)=== TRUE) {
        $last_pt4_id = $conn->insert_id;
        echo "New record created successfully. Last inserted ID is: ". $last_pt4_id;
    } else {
        echo "Error: ". $sqlQuery_part4. "<br>". $conn->error;
    }
    header("Location: /FoxPath-Project/Site_em_si/SCRIPTS/PHP/usuario.php");
} else {
    header("Location: /FoxPath-Project/Site_em_si/SCRIPTS/PHP/usuario.php");
}

$conn->close();
