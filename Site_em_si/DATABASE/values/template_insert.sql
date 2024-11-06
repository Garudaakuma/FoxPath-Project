-- ! BASICS TABLES ! --

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
    "admin123",
    "+51-7191234567"
);

-- ? Parte do multiplayer (necessita de pessoas → usuários)

INSERT INTO administradores(
	id_pessoa
) VALUES (
	1
);

INSERT INTO denunciados(
	id_adm,
    id_categoria,
    tempo,
    tag_pessoa
) VALUES (
	1, 1,
    "hh:mm:ss",
    "!@#$"
);

INSERT INTO usuarios(
	id_pessoa,
    nacionalidade
) VALUES (
	1,
    "Brasileiro"
);

INSERT INTO denuncias(
	id_adm,
	id_denunciado,
    id_denunciador,
    data_inicio, data_fim,
    tag_reportado,
    motivo,
    descricao
) VALUES (
	1,
    2,
    3,
    "YYYY-MM-DD HH:MM:SS", -- YYYY-MM-DD HH:MM:SS
    "YYYY-MM-DD HH:MM:SS",
    "!@#$",
    " uhhhhhhhhhhhhhhhhhhhhhh "
    " descrição mt foda :thumpup: "
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
	1,
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
	1,
    2,
    "YYYY-MM-DD HH:MM:DD", -- inicio
    "HH:MM:DD", -- expira
    "YYYY-MM-DD HH:MM:DD", -- fim
    " o mano mt foda ",
    True,
    " o maninho é mt foda ",
    True
);

-- ? Parte do singleplayer (necessita de pessoas → usuarios)

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
    1,
    2
);

INSERT INTO leaderboard(
    id_jogador
) VALUES (
    1
);

INSERT INTO fases(
    id_idioma,
    nome,
    descricao
) VALUES (
    1,
    "Iniciante",
    "verbo tu be gameplays"
);

INSERT INTO grupo_questoes(
    id_fase,
    nome
) VALUES (
    1,
    "grp_1"
);

INSERT INTO questoes(
    id_grp_questoes,
    score_total,
    descritivo
) VALUES (
    1,
    100,
    " qst do verbo to be xd "
);

INSERT INTO questoes_respondidas(
    id_questao,
    id_jogador,
    acertou,
    data_resposta
) VALUES (
    1,
    2,
    True,
    "YYYY:MM:DD HH:MM:SS"
);

INSERT INTO alternativas(
    id_questao,
    opcao,
    score,
    descritivo,
    correta
) VALUES(
    1,
    2,
    100,
    " defitivamente um descritivo ",
    True
);

-- ? Parte do avatar (necessita de pessoas → usuários)

INSERT INTO avatar(
    id_usuario
) VALUES (
    1
);

INSERT INTO cosmeticos(
    id_avatar,
    tematica
) VALUES (
    1,
    "comun"
);

INSERT INTO cabelo(
    id_cosmetico,
    nome,
    descricao
) VALUES (
    1,
    "cabelo_padrão",
    "Apenas um cabelo!"
);

INSERT INTO chapeus(
    id_cosmetico,
    nome,
    descricao
) VALUES (
    1,
    "chapeu_padrão",
    "Apenas um chapeu!"
);

INSERT INTO roupas_superiores(
    id_cosmetico,
    nome,
    descricao
) VALUES (
    1,
    "roupa-superior_padrão",
    "Apenas uma roupa do torço pra cima!"
);

INSERT INTO roupas_inferiores(
    id_cosmetico,
    nome,
    descricao
) VALUES (
    1,
    "roupa-inferior_padrão",
    "Apenas uma roupa do torço pra baixo!"
);
