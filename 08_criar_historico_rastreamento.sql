USE shoppefake;

CREATE TABLE HISTORICO_RASTREAMENTO (
    historico_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    encomenda_id INT NOT NULL,
    centro_id INT NOT NULL,
    viagem_id INT,
    ocorrido_em DATETIME NOT NULL,
    status VARCHAR(20) NOT NULL,
    observacao VARCHAR(200),

    CONSTRAINT ck_status CHECK (
        status IN (
            'COLETADA',
            'EM_TRIAGEM',
            'EM_TRANSPORTE',
            'ENTREGUE',
            'CANCELADA'
        )
    ),

    CONSTRAINT fk_hist_encomenda FOREIGN KEY (encomenda_id)
        REFERENCES ENCOMENDA(encomenda_id),
    CONSTRAINT fk_hist_centro FOREIGN KEY (centro_id)
        REFERENCES CENTRO_DISTRIBUICAO(centro_id),
    CONSTRAINT fk_hist_vinculo FOREIGN KEY (encomenda_id, viagem_id)
        REFERENCES ENCOMENDA_VIAGEM(encomenda_id, viagem_id),

    INDEX ix_hist_ultimo (
        encomenda_id,
        ocorrido_em DESC,
        historico_id DESC
    )
);