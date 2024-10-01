-- ? pessoa generico

INSERT INTO pessoas( -- 1
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
    "admin123",
    "+51-7191234567"
);

-- ? Usuario generico

INSERT INTO pessoas( -- 2
	tag,
	nome,
	data_nasc,
	email,
	senha,
	num_telefone
) VALUES (
	"$%¨&",
    "pessoa_user",
    "2001-09-11", -- YYYY-MM-DD
    "def@gmail.com",
    "admin123",
    "+51-4191234567"
);

INSERT INTO usuarios(
	id_pessoa,
    nacionalidade
) VALUES (
	2,
    "Brasileiro"
);

-- ? ADM parte do multiplayer

INSERT INTO pessoas( -- 3
	tag,
	nome,
	data_nasc,
	email,
	senha,
	num_telefone
) VALUES (
	"0000",
    "pessoa_adm",
    "2001-09-11", -- YYYY-MM-DD
    "admin@gmail.com",
    "123admin",
    "+51-3192481216"
);

INSERT INTO administradores(
	id_pessoa
) VALUES (
	3
);

INSERT INTO denunciados(
	id_adm,
    tempo,
    tag_pessoa
) VALUES (
	3,
    "00:00:10",
    "!@#$"
);

-- ? Fluente parte do multiplayer

INSERT INTO pessoas( -- 4
	tag,
	nome,
	data_nasc,
	email,
	senha,
	num_telefone
) VALUES (
	"1111",
    "pessoa_fluente",
    "2001-09-11", -- YYYY-MM-DD
    "zxy@gmail.com",
    "administrator",
    "+41-8191234567"
);

INSERT INTO usuarios(
	id_pessoa,
    nacionalidade
) VALUES (
	4,
    "Americado"
);

INSERT INTO fluentes(
	id_usuario,
    idioma_fluente
) VALUES (
	4,
    "inglês"
);

INSERT INTO certificado(
	id_fluente,
    nome,
    pdf_certificado,
    data_emissao,
    data_expiracao
) VALUES (
	4,
    "certificado_1",
    "LOAD_FILE('/FoxPath-Project/Site_em_si/IMAGES/PDF/algo.pdf')",
    "1999-12-01", -- emissão
    "2000-12-02"  -- expiracao
);

-- ? Jogador parte do singleplayer

INSERT INTO pessoas( -- 5
	tag,
	nome,
	data_nasc,
	email,
	senha,
	num_telefone
) VALUES (
	"2222",
    "pessoa_jogador",
    "2001-09-11", -- YYYY-MM-DD
    "Xx_algo_xX@gmail.com",
    "carlos",
    "+51-2191234567"
);

INSERT INTO usuarios(
	id_pessoa,
    nacionalidade
) VALUES (
	5,
    "Brasileiro"
);

INSERT INTO idiomas(
    nome,
    dificuldade
) VALUES (
    "Inglês",
    "Médio"
);

INSERT INTO jogadores(
    id_usuario,
    id_idioma
) VALUES (
    5,
    1
);