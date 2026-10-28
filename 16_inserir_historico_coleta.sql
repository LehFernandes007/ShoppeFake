USE shoppefake;

INSERT INTO HISTORICO_RASTREAMENTO
    (encomenda_id, centro_id, viagem_id,
     ocorrido_em, status, observacao)
VALUES
    (1, 1, NULL, '2026-10-10 08:00:00',
     'COLETADA', 'Pacote recebido no CD Mogi'),

    (2, 1, NULL, '2026-10-10 09:00:00',
     'COLETADA', 'Pacote recebido no CD Mogi'),

    (3, 1, NULL, '2026-10-11 08:00:00',
     'COLETADA', 'Pacote recebido no CD Mogi'),

    (4, 1, NULL, '2026-10-11 09:00:00',
     'COLETADA', 'Pacote recebido no CD Mogi'),

    (5, 1, NULL, '2026-10-12 08:00:00',
     'COLETADA', 'Pacote recebido no CD Mogi'),

    (6, 1, NULL, '2026-10-12 09:00:00',
     'COLETADA', 'Pacote recebido no CD Mogi');

SELECT * FROM HISTORICO_RASTREAMENTO
ORDER BY encomenda_id, ocorrido_em, historico_id;