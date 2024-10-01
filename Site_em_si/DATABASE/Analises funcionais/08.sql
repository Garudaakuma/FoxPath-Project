-- ! Preferência de roupa superior
SELECT
    rp.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_avatar = cmt.id_avatar
JOIN roupas_superiores rp ON cmt.id_cosmetico = rp.id_cosmetico
GROUP BY rp.nome
ORDER BY rp.nome, numero_de_equipados DESC;