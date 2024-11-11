<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/style_main.css">
    <link rel="stylesheet" href="../CSS/style_login.css">
    <link rel="stylesheet" href="../JS/main.js">

    <title>FOXPATH - Login</title>
</head>
<body class="tela_login">
    <section class="foxpath_intro">
        <div class="letters">F</div>
            <img class="logo_foxpath" src="/FOXPATH/IMAGES/foxpath-transparent.png" alt="logo_foxpath">
            <div class="letters">XPATH</div>
    </section>
    <section class="foxpath_faca_login">
        <div class="sub_title_letters">FAÇA O LOGIN!</div>
    </section>
    <div class="insert_dados">
        <div class="EMAIL">
            <div class="text_email">Email:</div>
            <div class="insert_email">
                <input type="text" id="email" name="email" placeholder="DIGITE EMAIL AQUI">
            </div>
            <div class="forgot_email">Esqueceu o Email?</div>
        </div>
        <div class="SENHA">
            <div class="text_senha">Senha:</div>
            <div class="insert_senha">
                <input type="text" id="email" name="email" placeholder="DIGITE UMA SENHA AQUI">
            </div>
            <div class="forgot_senha"> Esqueceu a Senha?</div>
        </div>
        <div class="USUARIO">
            <div class="text_usuario">Usuário:</div>
            <div class="choose_user">
                <input type="checkbox" id="padrao" name="padrao"> PADRÃO
                <input type="checkbox" id="fluente" name="fluente"> FLUENTE
                <input type="checkbox" id="adm" name="adm"> ADMINISTRADOR
            </div>
        </div>
    </div>
    <div class="login_buttons">
        <div class="login_button"><button>Login</button></div>
        <div class="back_button"><button onclick="btn_pagina_inicial()">Voltar</button></div>
    </div>
</body>
</html>