-- Insertar datos en la tabla Empresa
INSERT INTO empresa (nombre, direccion, telefono, email, fecha_creacion, estado) VALUES
('Ferretería Central', 'Carrera 1 12, bogota', '3002542315', 'contacto@ferreteria-central.com', '2020-05-01', 'Activa'),
('Herramientas del Norte', 'Carrera 25 12, bogota', '3002542315', 'info@herramientasnorte.com', '2019-03-15', 'Activa'),
('Suministros del Sur', 'Carrera 1 14, bogota', '3002542315', 'ventas@suministrosdelsur.com', '2021-07-20', 'Activa');

-- Insertar datos en la tabla Sucursal para Ferretería Central
INSERT INTO sucursal (empresa_id, nombre, direccion, telefono, email, fecha_creacion, estado) VALUES
(1, 'Ferretería Central - Sucursal 1', 'Calle 1, bogotá', '3002542315', 'sucursal1@ferreteria-central.com', '2020-06-01', 'Activa'),
(1, 'Ferretería Central - Sucursal 2', 'Calle 2, bogotá', '3002542315', 'sucursal2@ferreteria-central.com', '2020-07-01', 'Activa'),
(1, 'Ferretería Central - Sucursal 3', 'Calle 3, bogotá', '3002542315', 'sucursal3@ferreteria-central.com', '2020-08-01', 'Activa'),
(1, 'Ferretería Central - Sucursal 4', 'Calle 4, bogotá', '3002542315', 'sucursal4@ferreteria-central.com', '2020-09-01', 'Activa'),
(1, 'Ferretería Central - Sucursal 5', 'Calle 5, bogotá', '3002542315', 'sucursal5@ferreteria-central.com', '2020-10-01', 'Activa');

-- Insertar datos en la tabla Sucursal para Herramientas del Norte
INSERT INTO sucursal (empresa_id, nombre, direccion, telefono, email, fecha_creacion, estado) VALUES
(2, 'Herramientas del Norte - Sucursal 1', 'Avenida Norte 1, bogota', '3002541315', 'sucursal1@herramientasnorte.com', '2019-04-01', 'Activa'),
(2, 'Herramientas del Norte - Sucursal 2', 'Avenida Norte 2, bogota', '3002541315', 'sucursal2@herramientasnorte.com', '2019-05-01', 'Activa'),
(2, 'Herramientas del Norte - Sucursal 3', 'Avenida Norte 3, bogota', '3002541315', 'sucursal3@herramientasnorte.com', '2019-06-01', 'Activa'),
(2, 'Herramientas del Norte - Sucursal 4', 'Avenida Norte 4, bogota', '3002541315', 'sucursal4@herramientasnorte.com', '2019-07-01', 'Activa'),
(2, 'Herramientas del Norte - Sucursal 5', 'Avenida Norte 5, bogota', '3002541315', 'sucursal5@herramientasnorte.com', '2019-08-01', 'Activa');

-- Insertar datos en la tabla Sucursal para Suministros del Sur
INSERT INTO sucursal (empresa_id, nombre, direccion, telefono, email, fecha_creacion, estado) VALUES
(3, 'Suministros del Sur - Sucursal 1', 'Avenida Sur 1, bogota', '555-1113', 'sucursal1@suministrosdelsur.com', '2021-08-01', 'Activa'),
(3, 'Suministros del Sur - Sucursal 2', 'Avenida Sur 2, bogota', '555-2224', 'sucursal2@suministrosdelsur.com', '2021-09-01', 'Activa'),
(3, 'Suministros del Sur - Sucursal 3', 'Avenida Sur 3, bogota', '555-3335', 'sucursal3@suministrosdelsur.com', '2021-10-01', 'Activa'),
(3, 'Suministros del Sur - Sucursal 4', 'Avenida Sur 4, bogota', '555-4446', 'sucursal4@suministrosdelsur.com', '2021-11-01', 'Activa'),
(3, 'Suministros del Sur - Sucursal 5', 'Avenida Sur 5, bogota', '555-5557', 'sucursal5@suministrosdelsur.com', '2021-12-01', 'Activa');