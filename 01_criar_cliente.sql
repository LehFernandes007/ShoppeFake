USE shoppefake;

CREATE TABLE CLIENTE (
    cliente_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    documento VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(120),
    telefone VARCHAR(20),
    ativo TINYINT NOT NULL DEFAULT 1,
    CONSTRAINT ck_cliente_ativo CHECK (ativo IN (0, 1))
);