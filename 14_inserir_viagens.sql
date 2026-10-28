USE shoppefake;

INSERT INTO ROTA_VIAGEM
    (motorista_id, veiculo_id, origem_id, destino_id,
     saida_em, chegada_em)
VALUES
    (1, 1, 1, 2,
     '2026-10-12 10:00:00', '2026-10-12 12:00:00'),

    (2, 2, 2, 3,
     '2026-10-13 08:00:00', '2026-10-13 13:00:00'),

    (3, 3, 2, 4,
     '2026-10-14 09:00:00', NULL);

SELECT * FROM ROTA_VIAGEM;