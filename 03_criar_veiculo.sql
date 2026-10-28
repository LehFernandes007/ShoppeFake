USE shoppefake;

CREATE TABLE VEICULO (
    veiculo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    placa CHAR(7) NOT NULL UNIQUE,
    modelo VARCHAR(80) NOT NULL,
    capacidade_kg DECIMAL(10,2) NOT NULL,
    ativo TINYINT NOT NULL DEFAULT 1,
    CONSTRAINT ck_veiculo_ativo CHECK (ativo IN (0, 1)),
    CONSTRAINT ck_capacidade CHECK (capacidade_kg > 0)
);