
-- ? Denúncia

INSERT INTO denuncias(
	id_adm,
	id_denunciado,
    id_denunciador,
    data_inicio,
    tag_reportado,
    motivo,
    descricao
) VALUES (
	3,
    4,
    5,
    NOW(), -- YYYY-MM-DD HH:MM:SS
    "1111",
    " Falou que bolacha é biscoito "
    " O denunciado em questão teve a audacia de falar que bolacha é biscoito "
);

-- ? Agenda

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
	2,
    4,
    "2024-05-12 13:35:02", -- inicio
    "00:45:00", -- expira
    "2024-05-12 15:35:02", -- fim
    " o mano mt foda ",
    True,
    " o maninho é mt foda ",
    True
);

