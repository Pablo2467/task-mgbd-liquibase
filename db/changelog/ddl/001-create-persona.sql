CREATE TABLE persona (
    id         SERIAL PRIMARY KEY,
    nombre     VARCHAR(100) NOT NULL,
    apellido   VARCHAR(100) NOT NULL,
    email      VARCHAR(150) UNIQUE NOT NULL,
    telefono   VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);