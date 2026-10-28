USE shoppefake;

INSERT INTO ENCOMENDA_VIAGEM
    (encomenda_id, viagem_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1),
    (2, 2),
    (4, 2),
    (3, 3),
    (5, 3);

SELECT * FROM ENCOMENDA_VIAGEM
ORDER BY viagem_id, encomenda_id;