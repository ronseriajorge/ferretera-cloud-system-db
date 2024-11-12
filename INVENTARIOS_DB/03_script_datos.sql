-- Insertar registros en la tabla Inventario
INSERT INTO inventario (producto_id, cantidad_disponible, fecha_actualizacion) VALUES
(1, 100, NOW()),
(2, 200, NOW()),
(3, 150, NOW()),
(4, 120, NOW()),
(5, 300, NOW());

-- Insertar registros en la tabla TransaccionInventario

-- Transacciones para producto_id 1
INSERT INTO transaccioninventario (inventario_id, producto_id, tipo_transaccion, cantidad, fecha_transaccion, usuario_id) VALUES
(1, 1, 'entrada', 20, NOW(), 101),
(1, 1, 'salida', 15, NOW(), 102),
(1, 1, 'entrada', 50, NOW(), 103);

-- Transacciones para producto_id 2
INSERT INTO transaccioninventario (inventario_id, producto_id, tipo_transaccion, cantidad, fecha_transaccion, usuario_id) VALUES
(2, 2, 'salida', 30, NOW(), 101),
(2, 2, 'entrada', 40, NOW(), 104),
(2, 2, 'salida', 20, NOW(), 102);

-- Transacciones para producto_id 3
INSERT INTO transaccioninventario (inventario_id, producto_id, tipo_transaccion, cantidad, fecha_transaccion, usuario_id) VALUES
(3, 3, 'entrada', 10, NOW(), 105),
(3, 3, 'salida', 25, NOW(), 101),
(3, 3, 'entrada', 60, NOW(), 104);

-- Transacciones para producto_id 4
INSERT INTO transaccioninventario (inventario_id, producto_id, tipo_transaccion, cantidad, fecha_transaccion, usuario_id) VALUES
(4, 4, 'entrada', 30, NOW(), 106),
(4, 4, 'salida', 10, NOW(), 107),
(4, 4, 'entrada', 45, NOW(), 101);

-- Transacciones para producto_id 5
INSERT INTO transaccioninventario (inventario_id, producto_id, tipo_transaccion, cantidad, fecha_transaccion, usuario_id) VALUES
(5, 5, 'salida', 60, NOW(), 102),
(5, 5, 'entrada', 90, NOW(), 103),
(5, 5, 'salida', 25, NOW(), 101);