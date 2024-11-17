
<?php
print_r($_POST);
switch ($_POST["cad_part"]) {
    case 1:
        $formSave = [
            "cad_part-1"=> [
                "nome"=> $_POST["nome"],
                "email"=> $_POST["email"],
                "user_choice"=> $_POST["user_choice"]
            ]
        ];
}
