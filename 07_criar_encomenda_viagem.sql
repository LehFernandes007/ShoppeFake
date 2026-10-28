USE shoppefake;

CREATE TABLE ENCOMENDA_VIAGEM (
    encomenda_id INT NOT NULL,
    viagem_id INT NOT NULL,

    PRIMARY KEY (encomenda_id, viagem_id),

    CONSTRAINT fk_ev_encomenda FOREIGN KEY (encomenda_id)
        REFERENCES ENCOMENDA(encomenda_id),
    CONSTRAINT fk_ev_viagem FOREIGN KEY (viagem_id)
        REFERENCES ROTA_VIAGEM(viagem_id)
);