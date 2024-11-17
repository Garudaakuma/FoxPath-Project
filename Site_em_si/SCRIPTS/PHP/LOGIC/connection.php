
<?php
$jsonData = json_decode(file_get_contents("/FoxPath-Project/Site_em_si/SCRIPTS/JSON/bd_info.json"), true);
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

// TODO: SQL COMMANDS...
