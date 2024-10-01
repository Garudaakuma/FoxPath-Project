-- ! Porcentagem de acertos em certo idioma
SELECT
    i.nome,
	(COUNT(CASE WHEN qr.acertou = 1 THEN 1 END ) * 100.0 / COUNT(qr.id_qsts_respondida))
        AS porcentagem_de_acertos
FROM questoes_respondidas qr
JOIN questoes q ON qr.id_questao = q.id_questao
JOIN grupo_questoes gq ON q.id_grp_questoes = gq.id_grp_questoes
JOIN fases f ON gq.id_fase = f.id_fase
JOIN idiomas i ON f.id_idioma = i.id_idioma
GROUP BY i.nome ORDER BY porcentagem_de_acertos DESC;