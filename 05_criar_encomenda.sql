USE shoppefake;

CREATE TABLE ENCOMENDA (
    encomenda_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigo_rastreio VARCHAR(20) NOT NULL UNIQUE,
    remetente_id INT NOT NULL,
    destinatario_id INT NOT NULL,
    descricao VARCHAR(160) NOT NULL,
    peso_kg DECIMAL(10,2) NOT NULL,
    valor_frete DECIMAL(10,2) NOT NULL,
    criada_em DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    previsao_entrega DATE NOT NULL,

    CONSTRAINT ck_peso CHECK (peso_kg > 0),
    CONSTRAINT ck_frete CHECK (valor_frete >= 0),
    CONSTRAINT ck_clientes_distintos
        CHECK (remetente_id <> destinatario_id),
    CONSTRAINT ck_previsao
        CHECK (previsao_entrega >= DATE(criada_em)),

    CONSTRAINT fk_remetente FOREIGN KEY (remetente_id)
        REFERENCES CLIENTE(cliente_id),
    CONSTRAINT fk_destinatario FOREIGN KEY (destinatario_id)
        REFERENCES CLIENTE(cliente_id)
);