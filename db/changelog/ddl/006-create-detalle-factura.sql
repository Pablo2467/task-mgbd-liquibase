CREATE TABLE detalle_factura (
    id              SERIAL PRIMARY KEY,
    fk_factura      INT NOT NULL REFERENCES factura(id),
    fk_producto     INT NOT NULL REFERENCES producto(id),
    cantidad        INT NOT NULL CHECK (cantidad > 0),
    precio_unitario NUMERIC(10,2) NOT NULL CHECK (precio_unitario >= 0),
    subtotal        NUMERIC(12,2) GENERATED ALWAYS AS (cantidad * precio_unitario) STORED
);