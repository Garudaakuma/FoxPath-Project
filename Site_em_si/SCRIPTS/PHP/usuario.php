<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/FoxPath-Project/Site_em_si/IMAGES/ico_logoFoxPath/favicon.ico">
    <link rel="stylesheet" href="/FoxPath-Project/Site_em_si/SCRIPTS/CSS/style_usuario.css">
    <title>FOXPATH - Usuário</title>
</head>
<header class="header_usuario">
    <div class="icon">mini logo</div>
    <button onclick="btn_pagina_inicial()" class="logout">LOGOUT</button>
    <div class="notification">notification</div>
    <div class="score">score</div>
    <div class="name">nome</div>
    <div class="perfil">perfil</div>
</header>
<body class="body_usuario">
    <div class="modo_jogo">
        <div class="singleplayer">
            <button onclick="btn_go_to_idioma()" class="btn_single"></button>
        </div>
        <div class="multiplayer">
            <button class="btn_multi"></button>
        </div>
    </div>
</body>
<script src="../JS/main.js"></script>
</html>