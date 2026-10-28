USE shoppefake;

INSERT INTO CENTRO_DISTRIBUICAO
    (nome, cidade, uf, endereco)
VALUES
    ('CD Mogi', 'Mogi das Cruzes', 'SP', 'Rua Exemplo, 100'),
    ('CD São Paulo', 'São Paulo', 'SP', 'Rua Modelo, 200'),
    ('CD Araraquara', 'Araraquara', 'SP', 'Rua das Encomendas, 300'),
    ('CD Santos', 'Santos', 'SP', 'Rua das Entregas, 400');

SELECT * FROM CENTRO_DISTRIBUICAO;