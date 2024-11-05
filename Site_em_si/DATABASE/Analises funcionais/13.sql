-- ! Número de denúncias resolvidas em cada semana
SELECT
    CASE DAYNAME(dn.data_fim)
		WHEN 'Monday' THEN 'Segunda-feira'
        WHEN 'Tuesday' THEN 'Terça-feira'
        WHEN 'Wednesday' THEN 'Quarta-feira'
        WHEN 'Thursday' THEN 'Quinta-feira'
        WHEN 'Friday' THEN 'Sexta-feira'
        WHEN 'Saturday' THEN 'Sábado'
        WHEN 'Sunday' THEN 'Domingo'
    END AS semana,
    COUNT(dn.id_denuncia) as num_denuncias
FROM denuncias AS dn
GROUP BY semana ORDER BY semana DESC;