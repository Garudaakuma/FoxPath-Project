-- ! Horário mais marcado por nacionalidade
SELECT
    ps.nacionalidade,
    DATA_FORMAT(ag.data_inicio, '%H:00') AS hora,
    COUNT(*) AS quantidade_marcado
FROM agendas as ag
JOIN usuarios AS us ON us.id_pessoa = ag.id_usuario
JOIN pessoas AS ps ON ps.id_pessoa = us.id_pessoa
GROUP BY ps.nacionalidade, hora ORDER BY ps.nacionalidade, quantidade_marcado DESC;