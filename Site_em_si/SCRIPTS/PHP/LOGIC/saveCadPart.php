
<?php
print_r($_POST);
switch ($_POST["cad_part"]) {
    case 1:
        $formSave = [
            "cad_part-1"=>[
                "nome"=>$_POST["nome"],
                "email"=>$_POST["email"],
                "user_choice"=>$_POST["user_choice"]
            ]
        ];
        break;
    case 2:
        $formSave = [
            "cad_part-2"=> [
                "fluente_bool"=>$_POST["fluente_bool"],
                "genero"=>$_POST["genero"],
                "data_nascimento"=>$_POST["data_nascimento"],
                "certificado_nome"=>$_POST["certifcado_nome"],
                "certificado_data_emissao"=>$_POST["certificado_data_emissao"],
                "certificado_data_expiracao"=>$_POST["certificado_data_expiracao"]
            ]
        ];
        break;
    case 3:
        $formSave = [
            "cad_part-3"=> [
                "senha"=>$_POST["senha"],
                "senha_confirm"=>$_POST["senha_confirm"]
            ]
        ];
        break;
}
