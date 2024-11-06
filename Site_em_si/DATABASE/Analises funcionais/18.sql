-- ! Idade dos fluentes por nacionalidade
SELECT
    us.nacionalidade,
    YEAR(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(ps.data_nasc))) AS idade
FROM fluentes AS fl
JOIN usuarios AS us ON us.id_pessoa = fl.id_usuario
JOIN pessoas AS ps ON ps.id_pessoa = us.id_pessoa