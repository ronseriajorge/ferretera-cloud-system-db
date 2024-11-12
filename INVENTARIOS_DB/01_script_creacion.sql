-- creación tabla inventario
CREATE TABLE inventario (
    inventario_id INT PRIMARY KEY AUTO_INCREMENT,
    producto_id INT NOT NULL,
    cantidad_disponible INT NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- tabla de transacciones de inventarios
CREATE TABLE transaccioninventario (
    transaccion_id INT PRIMARY KEY AUTO_INCREMENT,
    inventario_id INT NOT NULL,
    producto_id INT NOT NULL,
    tipo_transaccion ENUM('entrada', 'salida') NOT NULL,
    cantidad INT NOT NULL,
    fecha_transaccion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    usuario_id INT,
    FOREIGN KEY (inventario_id) REFERENCES inventario(inventario_id)
);
--
