CREATE VIEW preferencias_avatar AS
    SELECT
        cbl.nome,
        COUNT(vtr.id_avatar) AS numero_de_equipados
        chp.nome,
        COUNT(vtr.id_avatar) AS numero_de_equipados
        rp.nome,
        COUNT(vtr.id_avatar) AS numero_de_equipados
        ri.nome,
        COUNT(vtr.id_avatar) AS numero_de_equipados
    FROM avatar vtr
    JOIN cosmeticos cmt ON vtr.id_avatar = cmt.id_avatar
    JOIN cabelo cbl ON cmt.id_cosmetico = cbl.id_cosmetico
    JOIN chapeus chp ON cmt.id_cosmetico = chp.id_cosmetico
    JOIN roupas_superiores rp ON cmt.id_cosmetico = rp.id_cosmetico
    JOIN roupas_inferiores ri ON cmt.id_cosmetico = ri.id_cosmetico
    GROUP BY cbl.nome
    ORDER BY numero_de_equipados DESC;
SELECT
    chp.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_avatar = cmt.id_avatar
JOIN chapeus chp ON cmt.id_cosmetico = chp.id_cosmetico
GROUP BY chp.nome
ORDER BY chp.nome, numero_de_equipados DESC;
SELECT
    rp.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_avatar = cmt.id_avatar
JOIN roupas_superiores rp ON cmt.id_cosmetico = rp.id_cosmetico
GROUP BY rp.nome
ORDER BY rp.nome, numero_de_equipados DESC;
SELECT
    ri.nome,
    COUNT(vtr.id_avatar) AS numero_de_equipados
FROM avatar vtr
JOIN cosmeticos cmt ON vtr.id_avatar = cmt.id_avatar
JOIN roupas_inferiores ri ON cmt.id_cosmetico = ri.id_cosmetico
GROUP BY ri.nome
ORDER BY ri.nome, numero_de_equipados DESC;