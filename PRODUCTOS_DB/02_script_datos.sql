INSERT INTO proveedor (nombre, direccion, telefono, correo_electronico, fecha_registro, estado)
VALUES 
    ('Proveedora Central', 'Calle 123, Ciudad', '555-1234', 'contacto@proveedoracentral.com', '2023-01-15', 'activo'),
    ('Suministros y Herramientas SA', 'Av. Industrial 45, Ciudad', '555-5678', 'ventas@suministrosyherramientas.com', '2023-02-10', 'activo'),
    ('Distribuidora Ferretera', 'Paseo de la Reforma 200, Ciudad', '555-9101', 'info@distribuidoraferr.com', '2023-03-05', 'inactivo');

-- Insertar datos en la tabla Marca
INSERT INTO marca (nombre, descripcion)
VALUES 
    ('Truper', 'Marca l�der en herramientas de alta calidad.'),
    ('Stanley', 'Marca reconocida por su durabilidad y calidad en herramientas.'),
    ('Makita', 'Especialista en herramientas el�ctricas y de construcci�n.');

-- Insertar datos en la tabla Categoria
INSERT INTO categoria (nombre, descripcion)
VALUES 
    ('Herramientas Manuales', 'Incluye herramientas como martillos, llaves, destornilladores, etc.'),
    ('Herramientas El�ctricas', 'Incluye taladros, esmeriladoras, sierras, etc.'),
    ('Material de Construcci�n', 'Materiales diversos como cemento, arena, tubos, etc.'),
    ('Accesorios', 'Accesorios varios para trabajos de ferreter�a y construcci�n.');

-- Insertar datos en la tabla Producto
INSERT INTO producto (id_proveedor, id_marca, nombre, descripcion, precio, unidad_medida, fecha_creacion, estado)
VALUES 
    (1, 1, 'Martillo de 16 oz', 'Martillo con mango de madera, ideal para trabajos de construcci�n.', 150.00, 'pieza', '2023-06-01', 'disponible'),
    (1, 1, 'Llave Ajustable', 'Llave ajustable de acero, tama�o 10 pulgadas.', 85.00, 'pieza', '2023-06-01', 'disponible'),
    (2, 2, 'Taladro El�ctrico', 'Taladro de 600W, incluye estuche y accesorios.', 1200.00, 'pieza', '2023-06-15', 'disponible'),
    (3, 3, 'Sierra Circular', 'Sierra circular 1400W, disco de 7 1/4 pulgadas.', 1800.00, 'pieza', '2023-07-10', 'no disponible'),
    (2, 2, 'Esmeriladora Angular', 'Esmeriladora de 4 1/2 pulgadas, ideal para cortar metal.', 950.00, 'pieza', '2023-08-01', 'disponible');

-- Insertar datos en la tabla Producto_Categoria (asociaciones de productos y categor�as)
INSERT INTO producto_categoria (id_producto, id_categoria)
VALUES 
    (1, 1),  -- Martillo de 16 oz en Herramientas Manuales
    (2, 1),  -- Llave Ajustable en Herramientas Manuales
    (3, 2),  -- Taladro El�ctrico en Herramientas El�ctricas
    (4, 2),  -- Sierra Circular en Herramientas El�ctricas
    (5, 2);  -- Esmeriladora Angular en Herramientas El�ctricas