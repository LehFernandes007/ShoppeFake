USE shoppefake;

INSERT INTO HISTORICO_RASTREAMENTO
    (encomenda_id, centro_id, viagem_id,
     ocorrido_em, status, observacao)
VALUES
    (1, 1, 1, '2026-10-12 10:00:00',
     'EM_TRANSPORTE', 'Saida de Mogi para Sao Paulo'),
    (2, 1, 1, '2026-10-12 10:00:00',
     'EM_TRANSPORTE', 'Saida de Mogi para Sao Paulo'),
    (3, 1, 1, '2026-10-12 10:00:00',
     'EM_TRANSPORTE', 'Saida de Mogi para Sao Paulo'),
    (4, 1, 1, '2026-10-12 10:00:00',
     'EM_TRANSPORTE', 'Saida de Mogi para Sao Paulo'),
    (5, 1, 1, '2026-10-12 10:00:00',
     'EM_TRANSPORTE', 'Saida de Mogi para Sao Paulo'),
    (6, 1, 1, '2026-10-12 10:00:00',
     'EM_TRANSPORTE', 'Saida de Mogi para Sao Paulo'),

    (1, 2, 1, '2026-10-12 12:00:00',
     'EM_TRIAGEM', 'Recebida no CD Sao Paulo'),
    (2, 2, 1, '2026-10-12 12:00:00',
     'EM_TRIAGEM', 'Recebida no CD Sao Paulo'),
    (3, 2, 1, '2026-10-12 12:00:00',
     'EM_TRIAGEM', 'Recebida no CD Sao Paulo'),
    (4, 2, 1, '2026-10-12 12:00:00',
     'EM_TRIAGEM', 'Recebida no CD Sao Paulo'),
    (5, 2, 1, '2026-10-12 12:00:00',
     'EM_TRIAGEM', 'Recebida no CD Sao Paulo'),
    (6, 2, 1, '2026-10-12 12:00:00',
     'EM_TRIAGEM', 'Recebida no CD Sao Paulo');

SELECT * FROM HISTORICO_RASTREAMENTO
ORDER BY encomenda_id, ocorrido_em, historico_id;