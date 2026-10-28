USE shoppefake;

SELECT
    e.codigo_rastreio,
    h.ocorrido_em,
    h.status,
    c.nome AS centro,
    h.observacao
FROM ENCOMENDA e
JOIN HISTORICO_RASTREAMENTO h
    ON h.encomenda_id = e.encomenda_id
JOIN CENTRO_DISTRIBUICAO c
    ON c.centro_id = h.centro_id
WHERE e.codigo_rastreio = 'SF0001'
ORDER BY h.ocorrido_em, h.historico_id;