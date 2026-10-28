USE shoppefake;

SELECT
    c.cliente_id,
    c.nome,
    COUNT(e.encomenda_id) AS total_enviadas
FROM CLIENTE c
LEFT JOIN ENCOMENDA e
    ON e.remetente_id = c.cliente_id
GROUP BY c.cliente_id, c.nome
ORDER BY total_enviadas DESC, c.nome;