-- ! Preferência de roupa inferior
SELECT
    ri.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_avatar = cmt.id_avatar
JOIN roupas_inferiores ri ON cmt.id_cosmetico = ri.id_cosmetico
GROUP BY ri.nome
ORDER BY ri.nome, numero_de_equipados DESC;