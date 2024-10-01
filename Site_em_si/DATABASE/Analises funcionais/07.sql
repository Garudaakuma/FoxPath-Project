-- ! Preferência de chapeu
SELECT
    chp.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_avatar = cmt.id_avatar
JOIN chapeus chp ON cmt.id_cosmetico = chp.id_cosmetico
GROUP BY chp.nome
ORDER BY chp.nome, numero_de_equipados DESC;