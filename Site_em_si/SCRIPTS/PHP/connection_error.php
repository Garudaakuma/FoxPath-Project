
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
    <link rel="stylesheet" href="/Foxpath-Project/Site_em_si/SCRIPTS/CSS/style_main.css">
    <?php link_css($high_contrast) ?>
    <link rel="stylesheet" href="../CSS/style_main.css">
    <link rel="stylesheet" href="../CSS/style_conn_error.css">
    <title>falha na conexão!</title>
</head>
<body>
    <section class="error_connection">
        <h1>✖ Falha na conexão! ✖</h1>
        <div class="forms">
        <form name="form" id="form" method="post" action="LOGIC/add_new_bd.php">
        <div class="inputs">
            <div class="server_input">
                <p>Server name</p><input type="text" name="servername" id="servername">
            </div>
            <div class="server_input">
                <p>User name</p><input type="text" name="username" id="username">
            </div>
            <div class="server_input">
                <p>Password</p>
                <div class="pw_inputs">
                    <input type="password" name="password" id="password">
                    <input type="checkbox" onclick="togglePassword()" onkeypress="togglePassword()">
                </div>
            </div>
            <div class="server_input">
                <p>Database</p><input type="text" name="database" id="database" value="bd_foxpath">
            </div>
            <div class="server_input">
                <p>Port</p><input type="text" name="port" id="port" value="3306">
            </div>
        </div>
            <div class="bt_form"><input type="submit" value="conectar!"></div>
        </form>
        </div>
    </section>
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
<script src="../JS/conn_error.js"></script>
</html>
