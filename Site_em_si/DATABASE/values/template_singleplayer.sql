INSERT INTO leaderboard(
    id_jogador
) VALUES (
    5
);

INSERT INTO fases(
    id_idioma,
    nome,
    descricao
) VALUES (
    1,
    "Iniciante",
    "se apresentar"
);

INSERT INTO grupo_questoes(
    id_fase,
    nome
) VALUES (
    1,
    "grp_apresentar-se"
);

-- questão 1

INSERT INTO questoes(
    id_grp_questoes,
    score_total,
    descritivo
) VALUES (
    1,
    100,
    "Escolha uma saudação equivalente há 'hello'!"
);

INSERT INTO alternativas(
    id_questao,
    opcao,
    score,
    descritivo,
    correta
) VALUES(
    1,
    1,
    100,
    " Olá! ",
    True
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
    0,
    " Oi ",
    False
);

INSERT INTO alternativas(
    id_questao,
    opcao,
    score,
    descritivo,
    correta
) VALUES(
    1,
    3,
    0,
    " Adeus ",
    False
);

INSERT INTO alternativas(
    id_questao,
    opcao,
    score,
    descritivo,
    correta
) VALUES(
    1,
    4,
    0,
    " Saudações! ",
    False
);

INSERT INTO questoes_respondidas(
    id_questao,
    id_jogador,
    acertou,
    data_resposta
) VALUES (
    1,
    5,
    True,
    NOW()
);

-- questão 2

INSERT INTO questoes(
    id_grp_questoes,
    score_total,
    descritivo
) VALUES (
    1,
    100,
    "Escolha uma saudação equivalente há 'goodbye'!"
);

INSERT INTO alternativas(
    id_questao,
    opcao,
    score,
    descritivo,
    correta
) VALUES(
    2,
    1,
    0,
    " Irei partir! ",
    False
);

INSERT INTO alternativas(
    id_questao,
    opcao,
    score,
    descritivo,
    correta
) VALUES(
    2,
    2,
    0,
    " bom chau! ",
    False
);

INSERT INTO alternativas(
    id_questao,
    opcao,
    score,
    descritivo,
    correta
) VALUES(
    2,
    3,
    100,
    " Adeus ",
    True
);

INSERT INTO alternativas(
    id_questao,
    opcao,
    score,
    descritivo,
    correta
) VALUES(
    2,
    4,
    0,
    " Desaparecerei!! ",
    False
);

INSERT INTO questoes_respondidas(
    id_questao,
    id_jogador,
    acertou,
    data_resposta
) VALUES (
    2,
    5,
    False,
    NOW()
);
