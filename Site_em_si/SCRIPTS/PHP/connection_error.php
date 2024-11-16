
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/FoxPath-Project/Site_em_si/IMAGES/ico_logoFoxPath/favicon.ico">
    <link rel="stylesheet" href="../CSS/style_conn_error.css">
    <title>falha na conexão!</title>
</head>
<body>
    <section class="error_connection">
        <h1>✖ Falha na conexão! ✖</h1>
        <div class="forms">
        <form name="form" id="form" method="post" action="add_new_connection.php">
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
</body>
<script src="../JS/conn_error.js"></script>
</html>
