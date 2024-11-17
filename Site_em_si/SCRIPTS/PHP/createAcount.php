
<?php
$jsonDecoded = json_decode(file_get_contents("/xampp/htdocs/Foxpath-Project/Site_em_si/JSON/cad_save.json"), true);
$cad_part = $jsonDecoded["cad_part"];
function cadPar($cad_part, $fluente_bool){
    switch ($cad_part) {
        case "1":
            return include "/xampp/htdocs/Foxpath-Project/Site_em_si/SCRIPTS/HTML/cad_part1.html";
        case "2":
            switch ($fluente_bool) {
                case "true":
                    return include "/xampp/htdocs/Foxpath-Project/Site_em_si/SCRIPTS/HTML/cad_part2-2.html";
                case "false":
                    return include "/xampp/htdocs/Foxpath-Project/Site_em_si/SCRIPTS/HTML/cad_part2-1.html";
                default:
                    echo 'Parte inválida!';
                    break;
            }
        case "3":
            return include "/xampp/htdocs/Foxpath-Project/Site_em_si/SCRIPTS/HTML/cad_part3.html";
        default:
            echo 'Parte inválida!';
            break;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/FoxPath-Project/Site_em_si/IMAGES/ico_logoFoxPath/favicon.ico">
    <link rel="stylesheet" href="../CSS/style_main.css">
    <link rel="stylesheet" href="../CSS/style_cadastro.css">
    <title>FOXPATH - Cadastro</title>
</head>
<body>
    <section class="foxpath_intro">
            <div class="letters">F</div>
            <img class="logo_foxpath" src="/FoxPath-Project/Site_em_si/IMAGES/foxpath-transparent.png" alt="logo_foxpath">
            <div class="letters">XPATH</div>
        </div>
    </section>
    <main class="cadastro">
        <?php cadPar($cad_part, $jsonDecoded["cad_part-1"]["fluente_bool"]) ?>
    </main>
</body>
<script src="../JS/main.js"></script>
<script src="../JS/create_acount.js"></script>
</html>
