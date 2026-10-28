USE shoppefake;

CREATE TABLE ROTA_VIAGEM (
    viagem_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    motorista_id INT NOT NULL,
    veiculo_id INT NOT NULL,
    origem_id INT NOT NULL,
    destino_id INT NOT NULL,
    saida_em DATETIME NOT NULL,
    chegada_em DATETIME,

    CONSTRAINT ck_centros_distintos
        CHECK (origem_id <> destino_id),
    CONSTRAINT ck_chegada
        CHECK (chegada_em IS NULL OR chegada_em >= saida_em),

    CONSTRAINT fk_viagem_motorista FOREIGN KEY (motorista_id)
        REFERENCES MOTORISTA(motorista_id),
    CONSTRAINT fk_viagem_veiculo FOREIGN KEY (veiculo_id)
        REFERENCES VEICULO(veiculo_id),
    CONSTRAINT fk_viagem_origem FOREIGN KEY (origem_id)
        REFERENCES CENTRO_DISTRIBUICAO(centro_id),
    CONSTRAINT fk_viagem_destino FOREIGN KEY (destino_id)
        REFERENCES CENTRO_DISTRIBUICAO(centro_id)
);