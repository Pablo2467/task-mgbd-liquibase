SELECT
    f.id            AS factura_id,
    f.fecha,
    f.estado,
    pr.nombre       AS producto,
    df.cantidad,
    df.precio_unitario,
    df.subtotal
FROM detalle_factura df
JOIN factura  f  ON f.id  = df.fk_factura
JOIN producto pr ON pr.id = df.fk_producto
ORDER BY f.id, pr.nombre;