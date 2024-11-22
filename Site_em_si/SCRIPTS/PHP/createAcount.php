
<?php

$json_flags = file_get_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/flags.json");
$jsonDecoded_flags = json_decode($json_flags, true);
$high_contrast = $jsonDecoded_flags['high_contrast'];
function link_css($high_contrast){
    switch ($high_contrast) {
        case true:
            echo '<link rel="stylesheet" href="../CSS/accessibility/style_accessibility.css">';
            return;
        case false:
            return;
    }
}

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
    <?php link_css($high_contrast) ?>
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
    <footer class="acessibilidade_part">
        <div class="accessibility_block">
            <img class="icon_accessibility" src="/FoxPath-Project/Site_em_si/IMAGES/accessibility_icon.png" alt="accessibility_icon.png">
            <div class="dropup">
                <button class="btn_accessibility">acessibilidade</button>
                <div class="dropup_accessibility">
                    <?php
                    function btn_apply_high_constrast($high_contrast, $jsonDecoded) {
                        switch ($high_contrast) {
                            case true:
                                $high_contrast = false;
                                $jsonDecoded["high_contrast"] = $high_contrast;
                                $jsonString = json_encode($jsonDecoded, JSON_PRETTY_PRINT);
                                file_put_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/flags.json", $jsonString);
                                header("Refresh:0");
                                return;
                            case false:
                                $high_contrast = true;
                                $jsonDecoded["high_contrast"] = $high_contrast;
                                $jsonString = json_encode($jsonDecoded, JSON_PRETTY_PRINT);
                                file_put_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/flags.json", $jsonString);
                                header("Refresh:0");
                                return;
                        }
                    }
                    if (isset($_POST['btn_high_contrast'])) {
                        btn_apply_high_constrast($high_contrast, $jsonDecoded_flags);
                    }
                    ?>
                    <img class="icon_high-contrast" src="/FoxPath-Project/Site_em_si/IMAGES/brightness.png" alt="highContrast_icon.png">
                    <form method="post">
                        <input type="submit" class="btn_high-contrast" name="btn_high_contrast" value="AUTO CONTRASTE">
                    </form>
                </div>
            </div>
        </div>
    </footer>
</body>
<script src="../JS/main.js"></script>
<script src="../JS/create_acount.js"></script>
</html>
