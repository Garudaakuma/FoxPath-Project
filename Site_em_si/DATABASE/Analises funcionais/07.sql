-- ! Preferência de chapeu
SELECT
    chp.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_cosmetico = cmt.id_cosmetico
JOIN chapeus chp ON cmt.id_cosmetico = chp.id_cosmetico
WHERE vtr.id_cosmetico != NULL
GROUP BY chp.nome
ORDER BY chp.nome, numero_de_equipados DESC;