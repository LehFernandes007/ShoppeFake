USE shoppefake;

SELECT
    r.viagem_id,
    m.nome AS motorista,
    v.modelo AS veiculo,
    v.placa,
    o.nome AS origem,
    d.nome AS destino,
    r.saida_em,
    r.chegada_em
FROM ROTA_VIAGEM r
JOIN MOTORISTA m ON m.motorista_id = r.motorista_id
JOIN VEICULO v ON v.veiculo_id = r.veiculo_id
JOIN CENTRO_DISTRIBUICAO o ON o.centro_id = r.origem_id
JOIN CENTRO_DISTRIBUICAO d ON d.centro_id = r.destino_id
ORDER BY r.viagem_id;