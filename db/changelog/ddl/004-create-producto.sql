CREATE TABLE producto (
    id          SERIAL PRIMARY KEY,
    nombre      VARCHAR(150) NOT NULL,
    descripcion TEXT,
    precio      NUMERIC(10,2) NOT NULL CHECK (precio >= 0),
    stock       INT NOT NULL DEFAULT 0 CHECK (stock >= 0),
    created_at  TIMESTAMP DEFAULT NOW()
);