
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
            <form class="forms_cadastro" methon="_POST">
                <input type="hidden" name="cad_part" value="1">
                <div class="inputs">
                <p>Nome:</p><input type="text" name="nome" id="nome_input" placeholder="DIGITE NOME AQUI...">
                </div>
                <div class="inputs">
                <p>Email:</p><input type="text" name="email" id="email_input" placeholder="DIGITE EMAIL AQUI...">
                </div>
                <div class="inputs">
                        <p>Usuário:</p>
                    <div class="radios">
                        <div><input type="radio" name="user_choice" id="user_default" value="user_default"><P>PADRÃO</P></div>
                        <div><input type="radio" name="user_choice" id="user_fluente" value="user_fluente"><p>FLUENTE</p></div>
                    </div>
                </div>
            </form>
            <div class="bts">
                    <button id="btn_continue" onclick="btn_continue()">Continue</button>
                    <button id="btn_cancel" onclick="btn_pagina_inicial()">Cancelar</button>
                </div>
        </section>

    </main>
</body>
<script src="../JS/main.js"></script>
<script src="../JS/create_acount.js"></script>
</html>
