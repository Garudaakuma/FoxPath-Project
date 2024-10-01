-- ! Quais alternativas estão sendo mais acertadas por idioma --
SELECT
    i.nome,
    q.descritivo,
    COUNT(qr.id_qsts_respondida) AS total_acertos
FROM questoes_respondidas qr
JOIN questoes q on qr.id_questao = q.id_questao
JOIN grupo_questoes gp on q.id_grp_questoes = gp.id_grp_questoes
JOIN fases f ON gp.id_fase = f.id_fase
JOIN idiomas i on f.id_idioma = i.id_idioma
WHERE qr.acertou = 1
GROUP BY i.nome, q.descritivo
ORDER BY i.nome, total_acertos DESC;