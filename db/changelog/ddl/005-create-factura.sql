CREATE TABLE factura (
    id         SERIAL PRIMARY KEY,
    fk_usuario INT NOT NULL REFERENCES usuario(id),
    fecha      DATE NOT NULL DEFAULT CURRENT_DATE,
    total      NUMERIC(12,2) NOT NULL DEFAULT 0,
    estado     VARCHAR(20) DEFAULT 'PENDIENTE',
    created_at TIMESTAMP DEFAULT NOW()
);