USE shoppefake;

INSERT INTO CLIENTE
    (nome, documento, email, telefone)
VALUES
    ('Letícia Toledo', '00000000001', 'leticia@toledo.com', '11970000006'),
    ('Nataly Cavalcanti', '00000000002', 'nataly@cavalcanti.com', '11940000006'),
    ('Cayo Felix', '00000000003', 'cayo@felix.com', '11910000003'),
    ('Samuel Bole', '00000000004', 'samuel@bole.com', '11950000000'),
    ('Cliente Teste', '00000000005', NULL, NULL);

SELECT * FROM CLIENTE;