//show password and hide password
function togglePassword() {
    const typePw = document.getElementById('password')
    if (typePw.type === "password") {
        typePw.type = "text"
    } else {
        typePw.type = "password"
    }
}
//consts
const servername = document.getElementById('servername')
const username = document.getElementById('username')
const password = document.getElementById('password')
const database = document.getElementById('database')
const port = document.getElementById('port')
//submit verifying
document.getElementById('form').addEventListener('submit', (e) => {
    if (servername.value === '' || username.value === '' || password.value === '') {
        alert('Todos os campos devem ser preenchidos.')
        e.preventDefault()
    }
})
//regexp validations
function checkSN(servername) {
    const re = /^[^\d][^\s][\w]+$/
    return re.test(servername)
}
function checkUN(username) {
    const re = /^[^\d][^\s][\w]+$/
    return re.test(username)
}
function checkPR(port) {
    const re = /^\d{4}$/
    return re.test(port)
}
//validate inputs
servername.addEventListener('input', () => {
    if (!checkSN(servername.value || !(username.value === ''))) {
        servername.style.color = "#ff0000"
    } else {
        servername.style.color = "#121212"
    }
})
username.addEventListener('input', () => {
    if (!checkUN(username.value)) {
        username.style.color = "#ff0000"
    } else {
        username.style.color = "#121212"
    }
})
port.addEventListener('input', () => {
    if (!checkPR(port.value)) {
        port.style.color = "#ff0000"
    } else {
        port.style.color = "#121212"
    }
})