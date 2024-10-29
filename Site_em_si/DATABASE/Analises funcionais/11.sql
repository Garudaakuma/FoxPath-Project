-- ! Número de usuários denunciados em cada categoria de denúncia
SELECT
    ct.nome as categoria,
    COUNT(dn.tag_pessoa) as qtd
FROM categorias ct
JOIN denunciados dn ON ct.id_categoria = dn.id_categoria
GROUP BY categoria;