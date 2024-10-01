-- ! Quantidade de alternativas corretas em um grupo de perguntas no idioma
SELECT
	i.nome,
    gq.nome,
    COUNT(a.id_alternativa) AS total_alternativas_corretas
FROM alternativas a
JOIN questoes q ON a.id_questao = q.id_questao
JOIN grupo_questoes gq ON q.id_grp_questoes = gq.id_grp_questoes
JOIN fases f ON gq.id_fase = f.id_fase
JOIN idiomas i ON f.id_idioma = i.id_idioma
WHERE a.correta = 1
GROUP BY i.nome, gq.nome
ORDER BY i.nome, total_alternativas_corretas DESC;