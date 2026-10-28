USE shoppefake;

CREATE TABLE MOTORISTA (
    motorista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnh CHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    ativo TINYINT NOT NULL DEFAULT 1,
    CONSTRAINT ck_motorista_ativo CHECK (ativo IN (0, 1))
);