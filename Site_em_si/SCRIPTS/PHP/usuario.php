<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/FoxPath-Project/Site_em_si/IMAGES/ico_logoFoxPath/favicon.ico">
    <link rel="stylesheet" href="/FoxPath-Project/Site_em_si/SCRIPTS/CSS/style_usuario.css">
    <title>FOXPATH - Usuário</title>
</head>
<body class="body_usuario">
    <header class="header_usuario">
        <img class="logo_icon" src="/FoxPath-Project/Site_em_si/IMAGES/foxpath-transparent.png" alt="logoFoxPath">
        <div class="left_side">
            <button onclick="btn_pagina_inicial()" class="logout">LOGOUT</button>
        </div>
        <div class="right_side">
            <div class="notification">notification</div>
            <div class="score">score</div>
            <div class="name">nome</div>
            <div class="perfil">perfil</div>
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
</body>
<script src="../JS/main.js"></script>
</html>
