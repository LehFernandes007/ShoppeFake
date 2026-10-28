USE shoppefake;

SELECT
    e.codigo_rastreio,
    c.nome AS remetente,
    e.descricao,
    e.peso_kg,
    e.valor_frete
FROM ENCOMENDA e
JOIN CLIENTE c ON c.cliente_id = e.remetente_id
ORDER BY e.encomenda_id;