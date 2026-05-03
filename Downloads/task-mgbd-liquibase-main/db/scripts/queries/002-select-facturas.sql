SELECT
    f.id       AS factura_id,
    f.fecha,
    f.estado,
    f.total,
    p.nombre || ' ' || p.apellido AS vendedor,
    u.username
FROM factura f
JOIN usuario u ON u.id  = f.fk_usuario
JOIN persona p ON p.id  = u.fk_persona
ORDER BY f.fecha DESC;