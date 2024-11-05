-- ! Tematica de roupa mais usado pelos usuarios
SELECT
    cs.tematica,
    COUNT(cs.id_avatar) AS num_avatares_usando
FROM cosmeticos AS cs
GROUP BY cs.tematica ORDER BY num_avatares_usando DESC