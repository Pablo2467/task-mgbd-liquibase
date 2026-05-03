CREATE TABLE rol (
    id          SERIAL PRIMARY KEY,
    nombre      VARCHAR(50) UNIQUE NOT NULL,
    descripcion TEXT,
    created_at  TIMESTAMP DEFAULT NOW()
);