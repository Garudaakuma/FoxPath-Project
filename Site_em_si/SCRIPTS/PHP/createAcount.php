
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
        <section class="cad_part-1">
        <div class="title_block"><h1 class="title-cad">CRIE SUA CONTA!</h1></div>
        <form class="forms_cadastro" action="/">
            <div class="inputs">
            <p>Nome:</p><input placeholder="DIGITE NOME AQUI..." type="text" name="nome" id="nome_input">
            </div>
            <div class="inputs">
            <p>Email:</p><input placeholder="DIGITE EMAIL AQUI..." type="text" name="email" id="email_input">
            </div>
            <div class="inputs">
                    <p>Usuário:</p>
                <div class="radios">
                    <div><input type="radio" name="user_choice" id="user_default" value="user_default"><P>PADRÃO</P></div>
                    <div><input type="radio" name="user_choice" id="user_fluente" value="user_fluente"><p>FLUENTE</p></div>
                </div>
            </div>
            <div class="bts">
                <input type="submit"onclick="" value="Continuar" id="btn_continue">
                <button id="btn_cancel" onclick="btn_pagina_inicial()">Cancelar</button>
            </div>
        </form>
        </section>

    </main>
</body>
<script src="../JS/main.js"></script>
<script src="../JS/create_acount.js"></script>
</html>
