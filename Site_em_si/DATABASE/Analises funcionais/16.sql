-- ! Quantos jogadores existem por idioma
SELECT
    us.nacionalidade,
    COUNT(jg.id_usuario) AS num_jogadores
FROM jogadores AS jg
JOIN usuarios AS us ON us.id_pessoa = jg.id_usuario
GROUP by us.nacionalidade