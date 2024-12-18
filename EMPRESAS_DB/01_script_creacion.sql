-- Crear tabla Empresa
CREATE TABLE empresa (
    empresa_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    email VARCHAR(100),
    fecha_creacion DATE,
    estado VARCHAR(50)
);

-- Crear tabla Sucursal
CREATE TABLE sucursal (
    sucursal_id INT PRIMARY KEY AUTO_INCREMENT,
    empresa_id INT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    email VARCHAR(100),
    fecha_creacion DATE,
    estado VARCHAR(50),
    FOREIGN KEY (empresa_id) REFERENCES empresa(empresa_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);