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
        <div class="title_block"><h1 class="title-cad">CRIE SUA CONTA!</h1></div>
        <form action="/FoxPath-Project/Site_em_si/SCRIPTS/" class="forms_cadastro">
            <div class="inputs">
            <p>Nome:</p><input placeholder="DIGITE NOME AQUI..." type="text" name="Nome" id="Nome_input">
            </div>
            <div class="inputs">
            <p>Email:</p><input placeholder="DIGITE EMAIL AQUI..." type="text" name="Email" id="Email_input">
            </div>
            <div class="inputs">
                    <p>Usuário:</p>
                <div class="radios">
                    <div><input type="radio" name="user_choice" id="user_default" value="user_default"><P>PADRÃO</P></div>
                    <div><input type="radio" name="user_choice" id="user_fluente" value="user_fluente"><p>FLUENTE</p></div>
                </div>
            </div>
            <div class="bts">
                <input type="button" value="Continuar" id="btn_continue">
                <button type="button" id="btn_cancel" onclick="btn_cancel()">Cancelar</button>
            </div>
        </form>
    </main>
</body>
<script src="../JS/createAcount.js"></script>
</html>