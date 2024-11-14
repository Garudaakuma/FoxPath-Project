
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/FoxPath-Project/Site_em_si/IMAGES/ico_logoFoxPath/favicon.ico">
    <link rel="stylesheet" href="../CSS/style_main.css">
    <link rel="stylesheet" href="../CSS/style_home.css">
    <title>FOXPATH</title>
</head>
<body>
    <section class="foxpath_intro">
            <div class="letters">F</div>
            <img class="logo_foxpath" src="/FoxPath-Project/Site_em_si/IMAGES/foxpath-transparent.png" alt="logo_foxpath">
            <div class="letters">XPATH</div>
        </div>
    </section>
    <main>
        <div class="buttons_login">
            <button onclick="btn_createAcount() <?php include 'session_start.php' ?>" >Criar conta</button>
            <button onclick="btn_login() <?php include 'session_start.php' ?>" >Fazer login</button>
        </div>
    </main>
</body>
<script src="../JS/main.js"></script>
</html>
