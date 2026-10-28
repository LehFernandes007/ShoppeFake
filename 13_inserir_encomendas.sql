USE shoppefake;

INSERT INTO ENCOMENDA
    (codigo_rastreio, remetente_id, destinatario_id,
     descricao, peso_kg, valor_frete, criada_em, previsao_entrega)
VALUES
    ('SF0001', 1, 2, 'Livros', 2.50, 25.00,
     '2026-10-10 08:00:00', '2026-10-15'),

    ('SF0002', 1, 3, 'Monitor', 8.00, 45.00,
     '2026-10-10 09:00:00', '2026-10-16'),

    ('SF0003', 2, 4, 'Roupas', 3.00, 20.00,
     '2026-10-11 08:00:00', '2026-10-16'),

    ('SF0004', 3, 1, 'Cadeira de escritorio', 12.00, 60.00,
     '2026-10-11 09:00:00', '2026-10-17'),

    ('SF0005', 3, 2, 'Impressora', 6.00, 40.00,
     '2026-10-12 08:00:00', '2026-10-18'),

    ('SF0006', 4, 1, 'Fone de ouvido', 0.50, 15.00,
     '2026-10-12 09:00:00', '2026-10-18');

SELECT * FROM ENCOMENDA;