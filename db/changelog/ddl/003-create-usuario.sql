CREATE TABLE usuario (
    id         SERIAL PRIMARY KEY,
    fk_persona INT NOT NULL REFERENCES persona(id),
    fk_rol     INT NOT NULL REFERENCES rol(id),
    username   VARCHAR(80) UNIQUE NOT NULL,
    password   VARCHAR(255) NOT NULL,
    activo     BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW()
);