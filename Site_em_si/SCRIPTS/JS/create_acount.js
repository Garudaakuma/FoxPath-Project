
function togglePassword(id_string) {
    const typePw = document.getElementById(id_string)
    if (typePw.type === "password") {
        typePw.type = "text"
    } else {
        typePw.type = "password"
    }
}

function btn_cancel() {
    window.location.href = "/FoxPath-Project/Site_em_si/SCRIPTS/PHP/main.php"
}

function btn_voltar() {
    window.location.href = "/FoxPath-Project/Site_em_si/SCRIPTS/PHP/LOGIC/cadBack.php"
}
