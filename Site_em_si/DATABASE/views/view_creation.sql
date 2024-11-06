CREATE VIEW num_denuncias_semana AS
    SELECT
        ps.nome as nome_administrador,
        CASE DAYNAME(dn.data_fim)
            WHEN 'Monday' THEN 'Segunda-feira'
            WHEN 'Tuesday' THEN 'Terça-feira'
            WHEN 'Wednesday' THEN 'Quarta-feira'
            WHEN 'Thursday' THEN 'Quinta-feira'
            WHEN 'Friday' THEN 'Sexta-feira'
            WHEN 'Saturday' THEN 'Sábado'
            WHEN 'Sunday' THEN 'Domingo'
        END AS semana,
        COUNT(dn.id_denuncia) AS numero_denuncias_resolvidas
    FROM denuncias AS dn
    JOIN administradores AS adm ON adm.id_pessoa = dn.id_adm
    JOIN pessoas AS ps ON ps.id_pessoa = adm.id_pessoa
    WHERE dn.data_fim IS NOT NULL
    GROUP BY nome_administrador, semana ORDER BY semana DESC;