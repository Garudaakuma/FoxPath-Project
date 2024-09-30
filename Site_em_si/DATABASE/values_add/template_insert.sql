INSERT INTO pessoas(
	tag,
	nome,
	data_nasc,
	email,
	senha,
	num_telefone
) VALUES (
	"!@#$",
    "pessoa_1",
    "2001-09-11", -- YYYY-MM-DD
    "abc@gmail.com",
    "+51-7191234567"
);

INSERT INTO administradores(
	id_pessoa
) VALUES (
	0
);

INSERT INTO denunciados(
	id_adm,
    tempo,
    tag_pessoa
) VALUES (
	0,
    "hh:mm:ss",
    "!@#$"
);

INSERT INTO usuarios(
	id_pessoa,
    nacionalidade
) VALUES (
	0,
    "Brasileiro"
);

INSERT INTO denuncias(
	id_adm,
	id_denunciado,
    id_denunciador,
    data_fim, data_fim,
    tag_reportado,
    motivo,
    descricao
) VALUES (
	0,
    1,
    2,
    "YYYY-MM-DD HH:MM:SS", -- YYYY-MM-DD HH:MM:SS
    "YYYY-MM-DD HH:MM:SS",
    "!@#$",
    " uhhhhhhhhhhhhhhhhhhhhhh "
);

INSERT INTO fluentes(
	id_usuario,
    idioma_fluente
) VALUES (
	0,
    "inglês"
);

INSERT INTO certificados(
	id_fluente,
    nome,
    descricao,
    data_emissao,
    data_expiracao
) VALUES (
	0,
    "certificado_1",
    "definitivamente é um certificado.\n - Confia . v.)_b",
    "YYYY-MM-DD", -- emissão
    "YYYY-MM-DD"  -- expiracao
);

INSERT INTO agendas(
	id_usuario,
    id_fluente,
    data_inicio,
    data_expira,
    data_fim,
    feedback_user,
    positive_exp_user,
    feedback_fluente,
    positive_exp_fluente
) VALUES (
	0,
    1,
    "YYYY-MM-DD HH:MM:DD", -- inicio
    "HH:MM:DD", -- expira
    "YYYY-MM-DD HH:MM:DD", -- fim
    " o mano mt foda ",
    True,
    " o maninho é mt foda ",
    True
)

