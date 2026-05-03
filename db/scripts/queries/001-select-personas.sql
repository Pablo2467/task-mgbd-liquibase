SELECT
    p.id,
    p.nombre || ' ' || p.apellido AS nombre_completo,
    p.email,
    p.telefono,
    u.username,
    u.activo,
    r.nombre AS rol
FROM persona p
JOIN usuario u ON u.fk_persona = p.id
JOIN rol r     ON r.id = u.fk_rol
ORDER BY p.id;