
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
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/FoxPath-Project/Site_em_si/IMAGES/ico_logoFoxPath/favicon.ico">
    <?php link_css($high_contrast) ?>
    <link rel="stylesheet" href="/Foxpath-Project/Site_em_si/SCRIPTS/CSS/style_main.css">
    <link rel="stylesheet" href="/FoxPath-Project/Site_em_si/SCRIPTS/CSS/style_usuario.css">
    <title>FOXPATH - Usuário</title>
</head>
<body class="body_usuario">
    <header class="header_usuario">
        <div class="left_side">
            <img class="logo_icon" src="/FoxPath-Project/Site_em_si/IMAGES/header_img/mini_logo.png" alt="logoFoxPath">
            <button onclick="btn_pagina_inicial()" class="logout">LOGOUT</button>
        </div>
        <div class="right_side">
            <button onclick="" class="btn_notification"></button>
            <div class="score">score</div>
            <div class="name">nome</div>
            <button onclick="" class="btn_perfil"></button>
        </div>
    </header>
    <div class="modo_jogo">
        <div class="singleplayer">
            <button onclick="btn_go_to_idioma()" class="btn_single"></button>
        </div>
        <div class="multiplayer">
            <button onclick="btn_usuario_multiplayer()" class="btn_multi"></button>
        </div>
    </div>
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
</html>
