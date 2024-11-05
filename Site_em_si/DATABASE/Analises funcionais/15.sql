-- ! Quantos fluentes existem por idioma
SELECT
    fl.idioma_fluente AS idioma,
    COUNT(fl.id_usuario) AS num_fluentes
FROM fluentes AS fl
JOIN usuarios AS us ON us.id_pessoa = fl.id_usuario
GROUP BY idioma;