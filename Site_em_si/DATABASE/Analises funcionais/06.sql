-- ! Preferência de cabelo
SELECT
    cbl.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_avatar = cmt.id_avatar
JOIN cabelo cbl ON cmt.id_cosmetico = cbl.id_cosmetico
GROUP BY cbl.nome
ORDER BY cbl.nome, numero_de_equipados DESC;