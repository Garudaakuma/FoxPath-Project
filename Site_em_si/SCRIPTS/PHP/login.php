<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/FoxPath-Project/Site_em_si/IMAGES/ico_logoFoxPath/favicon.ico">
    <link rel="stylesheet" href="/FoxPath-Project/Site_em_si/SCRIPTS/CSS/style_main.css">
    <link rel="stylesheet" href="/FoxPath-Project/Site_em_si/SCRIPTS/CSS/style_login.css">

    <title>FOXPATH - Login</title>
</head>
<body class="tela_login">
    <section class="foxpath_intro">
        <div class="letters">F</div>
            <img class="logo_foxpath" src="/FoxPath-Project/Site_em_si/IMAGES/foxpath-transparent.png" alt="logo_foxpath">
            <div class="letters">XPATH</div>
    </section>
    <div class="body_Login">
        <div class="sub_title_letters">FAÇA O LOGIN!</div> <br>
        <div class="insert_dados">
            <div class="EMAIL">
                <div class="text_email">Email:</div>
                <div class="insert_email">
                    <input type="text" id="email" name="email" placeholder="DIGITE O EMAIL AQUI">
                </div>
                <div class="forgot_email"><a href="">Esqueceu o Email?</a></div> <br>
            </div>
            <div class="SENHA">
                <div class="text_senha">Senha:</div>
                <div class="insert_senha">
                    <input type="text" id="email" name="email" placeholder="DIGITE UMA SENHA AQUI">
                </div>
                <div class="forgot_senha"><a href="">Esqueceu a Senha?</a></div> <br>
            </div>
            <div class="USUARIO">
                <div class="text_usuario">Usuário:</div>
                <div class="choose_user">
                    <input onclick="btn_back_usuario()" type="checkbox" id="padrao" name="padrao">
                    <label for="padrao">PADRÃO</label>
                    <input onclick="btn_back_to_fluente()" type="checkbox" id="fluente" name="fluente">
                    <label for="fluente">FLUENTE</label>
                    <input onclick="btn_back_to_adm()" type="checkbox" id="adm" name="adm">
                    <label for="adm">ADMINISTRADOR</label>
                </div> <br>
            </div>
        </div>
        <div class="login_buttons">
            <div class="login_button"><button>Login</button></div> <br>
            <div class="back_button"><button onclick="btn_pagina_inicial()">Voltar</button></div>
        </div>
    </div>
</body>
<script src="../JS/main.js"></script>
</html>