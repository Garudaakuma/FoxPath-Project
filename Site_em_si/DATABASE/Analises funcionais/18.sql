-- ! Idade dos fluentes por nacionalidade
SELECT
    us.nacionalidade,
    DATEDIFF(ps.data_nasc, NOW()) AS idade
FROM jogadores AS jg
JOIN usuarios AS us ON us.id_pessoa = jg.id_usuario
JOIN pessoas AS ps ON ps.id_pessoa = us.id_pessoa
GROUP by us.nacionalidade