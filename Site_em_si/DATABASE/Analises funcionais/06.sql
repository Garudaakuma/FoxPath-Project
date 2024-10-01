-- ! Preferência de cabelo
SELECT
    cbl.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_cosmetico = cmt.id_cosmetico
JOIN cabelo cbl ON cmt.id_cosmetico = cbl.id_cosmetico
WHERE vtr.id_cosmetico != NULL
GROUP BY cbl.nome
ORDER BY cbl.nome, numero_de_equipados DESC;