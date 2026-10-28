USE shoppefake;

INSERT INTO VEICULO
    (placa, modelo, capacidade_kg)
VALUES
    ('ABC1D23', 'Honda Civic G10', 100.00),
    ('DEF4G56', 'Fiat Strada', 600.00),
    ('GHI7J89', 'Renault Master', 1500.00);

SELECT * FROM VEICULO;