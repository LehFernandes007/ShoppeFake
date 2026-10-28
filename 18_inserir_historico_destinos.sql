USE shoppefake;

INSERT INTO HISTORICO_RASTREAMENTO
    (encomenda_id, centro_id, viagem_id,
     ocorrido_em, status, observacao)
VALUES
    (1, 2, NULL, '2026-10-12 16:00:00',
     'ENTREGUE', 'Entregue ao destinatario em Sao Paulo'),

    (6, 2, NULL, '2026-10-12 17:00:00',
     'ENTREGUE', 'Entregue ao destinatario em Sao Paulo'),

    (2, 2, 2, '2026-10-13 08:00:00',
     'EM_TRANSPORTE', 'Saida de Sao Paulo para Araraquara'),

    (4, 2, 2, '2026-10-13 08:00:00',
     'EM_TRANSPORTE', 'Saida de Sao Paulo para Araraquara'),

    (2, 3, 2, '2026-10-13 13:00:00',
     'EM_TRIAGEM', 'Recebida no CD Araraquara'),

    (4, 3, 2, '2026-10-13 13:00:00',
     'EM_TRIAGEM', 'Recebida no CD Araraquara'),

    (2, 3, NULL, '2026-10-14 15:00:00',
     'ENTREGUE', 'Entregue ao destinatario em Araraquara'),

    (3, 2, 3, '2026-10-14 09:00:00',
     'EM_TRANSPORTE', 'Saida de Sao Paulo para Santos'),

    (5, 2, 3, '2026-10-14 09:00:00',
     'EM_TRANSPORTE', 'Saida de Sao Paulo para Santos');

SELECT * FROM HISTORICO_RASTREAMENTO
ORDER BY encomenda_id, ocorrido_em, historico_id;