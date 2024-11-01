INSERT INTO Proveedor (nombre, direccion, telefono, correo_electronico, fecha_registro, estado)
VALUES 
    ('Proveedora Central', 'Calle 123, Ciudad', '555-1234', 'contacto@proveedoracentral.com', '2023-01-15', 'activo'),
    ('Suministros y Herramientas SA', 'Av. Industrial 45, Ciudad', '555-5678', 'ventas@suministrosyherramientas.com', '2023-02-10', 'activo'),
    ('Distribuidora Ferretera', 'Paseo de la Reforma 200, Ciudad', '555-9101', 'info@distribuidoraferr.com', '2023-03-05', 'inactivo');

-- Insertar datos en la tabla Marca
INSERT INTO Marca (nombre, descripcion)
VALUES 
    ('Truper', 'Marca líder en herramientas de alta calidad.'),
    ('Stanley', 'Marca reconocida por su durabilidad y calidad en herramientas.'),
    ('Makita', 'Especialista en herramientas eléctricas y de construcción.');

-- Insertar datos en la tabla Categoria
INSERT INTO Categoria (nombre, descripcion)
VALUES 
    ('Herramientas Manuales', 'Incluye herramientas como martillos, llaves, destornilladores, etc.'),
    ('Herramientas Eléctricas', 'Incluye taladros, esmeriladoras, sierras, etc.'),
    ('Material de Construcción', 'Materiales diversos como cemento, arena, tubos, etc.'),
    ('Accesorios', 'Accesorios varios para trabajos de ferretería y construcción.');

-- Insertar datos en la tabla Producto
INSERT INTO Producto (id_proveedor, id_marca, nombre, descripcion, precio, unidad_medida, fecha_creacion, estado)
VALUES 
    (1, 1, 'Martillo de 16 oz', 'Martillo con mango de madera, ideal para trabajos de construcción.', 150.00, 'pieza', '2023-06-01', 'disponible'),
    (1, 1, 'Llave Ajustable', 'Llave ajustable de acero, tamaño 10 pulgadas.', 85.00, 'pieza', '2023-06-01', 'disponible'),
    (2, 2, 'Taladro Eléctrico', 'Taladro de 600W, incluye estuche y accesorios.', 1200.00, 'pieza', '2023-06-15', 'disponible'),
    (3, 3, 'Sierra Circular', 'Sierra circular 1400W, disco de 7 1/4 pulgadas.', 1800.00, 'pieza', '2023-07-10', 'no disponible'),
    (2, 2, 'Esmeriladora Angular', 'Esmeriladora de 4 1/2 pulgadas, ideal para cortar metal.', 950.00, 'pieza', '2023-08-01', 'disponible');

-- Insertar datos en la tabla Producto_Categoria (asociaciones de productos y categorías)
INSERT INTO Producto_Categoria (id_producto, id_categoria)
VALUES 
    (1, 1),  -- Martillo de 16 oz en Herramientas Manuales
    (2, 1),  -- Llave Ajustable en Herramientas Manuales
    (3, 2),  -- Taladro Eléctrico en Herramientas Eléctricas
    (4, 2),  -- Sierra Circular en Herramientas Eléctricas
    (5, 2);  -- Esmeriladora Angular en Herramientas Eléctricas