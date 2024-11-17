
<?php
echo "_POST<pre>";
print_r($_POST);
echo "</pre>";
$jsonString = file_get_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/cad_save.json");
echo "jsonstring<pre>";
print_r($jsonString);
echo "</pre>";
$jsonDecoded = json_decode($jsonString, true);
echo "jsondecoded<pre>";
print_r($jsonDecoded);
echo "</pre>";
switch ($_POST["cad_part"]) {
    case 1:
        $formSave = [
            "cad_part"=>$_POST["cad_part"],
            "cad_part-1"=>[
                "nome"=>$_POST["nome"],
                "email"=>$_POST["email"],
                "fluente_bool"=>$_POST["user_choice"]
            ],
            "cad_part-2"=>[
                "fluente_bool"=>$jsonDecoded["cad_part-2"]["fluente_bool"],
                "genero"=>$jsonDecoded["cad_part-2"]["genero"],
                "data_nascimento"=>$jsonDecoded["cad_part-2"]["data_nascimento"],
                "numero_telefone"=>$jsonDecoded["cad_part-2"]["numero_telefone"],
                "nacionalidade"=>$jsonDecoded["cad_part-2"]["nacionalidade"],
                "idioma_fluente"=>$jsonDecoded["cad_part-2"]["idioma_fluente"],
                "certificado_nome"=>$jsonDecoded["cad_part-2"]["certificado_nome"],
                "certificado_data_emissao"=>$jsonDecoded["cad_part-2"]["certificado_data_emissao"],
                "certificado_data_expiracao"=>$jsonDecoded["cad_part-2"]["certificado_data_expiracao"]
            ],
            "cad_part-3"=>[
                "senha"=>$jsonDecoded["cad_part-3"]["senha"],
                "senha_confirm"=>$jsonDecoded["cad_part-3"]["senha_confirm"]
            ]
        ];
        $formSave['cad_part'] = "2";
        echo "formsave<pre>";
        print_r($formSave);
        echo "</pre>";
        $arrayMerged = $formSave+$jsonDecoded;
        echo "arraymerged<pre>";
        print_r($arrayMerged);
        echo "</pre>";
        $stringJson = json_encode($arrayMerged, JSON_PRETTY_PRINT);
        echo "stringjson<pre>";
        print_r($stringJson);
        echo "</pre>";
        file_put_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/cad_save.json",$stringJson);
        header("Location: /FoxPath-Project/Site_em_si/SCRIPTS/PHP/createAcount.php");
        break;
    case 2:
        $formSave = [
            "cad_part"=>$_POST["cad_part"],
            "cad_part-1"=>[
                "nome"=>$jsonDecoded["cad_part-1"]["nome"],
                "email"=>$jsonDecoded["cad_part-1"]["email"],
                "fluente_bool"=>$jsonDecoded["cad_part-1"]["fluente_bool"]
            ],
            "cad_part-2"=>[
                "fluente_bool"=>$_POST["fluente_bool"],
                "genero"=>$_POST["genero"],
                "data_nascimento"=>$_POST["data_nascimento"],
                "numero_telefone"=>$_POST["numero_telefone"],
                "nacionalidade"=>$_POST["nacionalidade"],
                "idioma_fluente"=>$_POST["idioma_fluente"],
                "certificado_nome"=>$_POST["certificado_nome"],
                "certificado_data_emissao"=>$_POST["certificado_data_emissao"],
                "certificado_data_expiracao"=>$_POST["certificado_data_expiracao"]
            ],
            "cad_part-3"=>[
                "senha"=>$jsonDecoded["cad_part-3"]["senha"],
                "senha_confirm"=>$jsonDecoded["cad_part-3"]["senha_confirm"]
            ]
        ];
        $formSave['cad_part'] = "3";
        echo "formsave<pre>";
        print_r($formSave);
        echo "</pre>";
        $arrayMerged = $formSave+$jsonDecoded;
        echo "arraymerged<pre>";
        print_r($arrayMerged);
        echo "</pre>";
        $stringJson = json_encode($arrayMerged, JSON_PRETTY_PRINT);
        echo "stringjson<pre>";
        print_r($stringJson);
        echo "</pre>";
        file_put_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/cad_save.json",$stringJson);
        header("Location: /FoxPath-Project/Site_em_si/SCRIPTS/PHP/createAcount.php");
        break;
    case 3:
        $formSave = [
            "cad_part"=>$_POST["cad_part"],
            "cad_part-1"=>[
                "nome"=>$jsonDecoded["cad_part-1"]["nome"],
                "email"=>$jsonDecoded["cad_part-1"]["email"],
                "fluente_bool"=>$jsonDecoded["cad_part-1"]["fluente_bool"]
            ],
            "cad_part-2"=>[
                "fluente_bool"=>$jsonDecoded["cad_part-2"]["fluente_bool"],
                "genero"=>$jsonDecoded["cad_part-2"]["genero"],
                "data_nascimento"=>$jsonDecoded["cad_part-2"]["data_nascimento"],
                "numero_telefone"=>$jsonDecoded["cad_part-2"]["numero_telefone"],
                "nacionalidade"=>$jsonDecoded["cad_part-2"]["nacionalidade"],
                "idioma_fluente"=>$jsonDecoded["cad_part-2"]["idioma_fluente"],
                "certificado_nome"=>$jsonDecoded["cad_part-2"]["certificado_nome"],
                "certificado_data_emissao"=>$jsonDecoded["cad_part-2"]["certificado_data_emissao"],
                "certificado_data_expiracao"=>$jsonDecoded["cad_part-2"]["certificado_data_expiracao"]
            ],
            "cad_part-3"=>[
                "senha"=>$_POST["senha"],
                "senha_confirm"=>$_POST["senha_confirm"]
            ]
        ];
        $arrayMerged = $formSave+$jsonDecoded;
        echo "<pre>";
        print_r($arrayMerged);
        echo "</pre>";
        $stringJson = json_encode($arrayMerged, JSON_PRETTY_PRINT);
        echo "stringjson<pre>";
        print_r($stringJson);
        echo "</pre>";
        file_put_contents("/xampp/htdocs/FoxPath-Project/Site_em_si/JSON/cad_save.json",$stringJson);
        header("Location: connection.php");
        break;
}

