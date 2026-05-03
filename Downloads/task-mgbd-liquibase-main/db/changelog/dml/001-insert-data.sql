INSERT INTO persona (nombre, apellido, email, telefono) VALUES
('Carlos',    'Ramírez',  'carlos.ramirez@email.com',    '3101234567'),
('Laura',     'Gómez',    'laura.gomez@email.com',       '3209876543'),
('Andrés',    'Torres',   'andres.torres@email.com',     '3157654321'),
('María',     'López',    'maria.lopez@email.com',       '3004567890'),
('Felipe',    'Herrera',  'felipe.herrera@email.com',    '3112345678'),
('Juan Pablo','Valverde', 'juanpablo.valverde@email.com','3145678901'),
('Luna',      'Sánchez',  'luna.sanchez@email.com',      '3167890123'),
('Sofía',     'Martínez', 'sofia.martinez@email.com',    '3178901234'),
('Jesus',     'García',   'jesus.garcia@email.com',      '3189012345'),
('Maria',     'García',   'maria2.garcia@email.com',     '3190123456');

INSERT INTO rol (nombre, descripcion) VALUES
('ADMIN',     'Administrador del sistema con acceso total'),
('VENDEDOR',  'Usuario con acceso a ventas y facturación'),
('CONSULTOR', 'Usuario con acceso de solo lectura');

INSERT INTO usuario (fk_persona, fk_rol, username, password) VALUES
(1,  1, 'carlos.admin',    'hash_password_1'),
(2,  2, 'laura.vendedor',  'hash_password_2'),
(3,  2, 'andres.vende',    'hash_password_3'),
(4,  3, 'maria.consulta',  'hash_password_4'),
(5,  1, 'felipe.admin',    'hash_password_5'),
(6,  2, 'juanpablo.vende', 'hash_password_6'),
(7,  3, 'luna.consulta',   'hash_password_7'),
(8,  2, 'sofia.vende',     'hash_password_8'),
(9,  3, 'jesus.consulta',  'hash_password_9'),
(10, 2, 'maria.vende',     'hash_password_10');

INSERT INTO producto (nombre, descripcion, precio, stock) VALUES
('Laptop Dell 15"',       'Laptop Intel i7 16GB RAM 512GB SSD', 3500000.00, 10),
('Mouse Inalámbrico',     'Mouse óptico inalámbrico 2.4GHz',      45000.00, 50),
('Teclado Mecánico',      'Teclado mecánico retroiluminado RGB',  180000.00, 25),
('Monitor 24"',           'Monitor Full HD IPS 75Hz',             650000.00, 15),
('Disco Duro Externo 1T', 'HDD externo USB 3.0 1 Terabyte',      200000.00, 30);

INSERT INTO factura (fk_usuario, fecha, total, estado) VALUES
(2, '2025-01-10', 3545000.00, 'PAGADA'),
(3, '2025-01-15',  830000.00, 'PAGADA'),
(2, '2025-01-20',  225000.00, 'PENDIENTE');


INSERT INTO detalle_factura (fk_factura, fk_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 3500000.00),
(1, 2, 1,   45000.00),
(2, 4, 1,  650000.00),
(2, 3, 1,  180000.00),
(3, 2, 3,   45000.00),
(3, 3, 1,  180000.00);