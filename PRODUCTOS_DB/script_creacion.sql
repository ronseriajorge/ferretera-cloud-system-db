-- Crear tabla Proveedor
CREATE TABLE Proveedor (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    correo_electronico VARCHAR(100),
    fecha_registro DATE NOT NULL,
    estado ENUM('activo', 'inactivo') DEFAULT 'activo'
);

-- Crear tabla Marca
CREATE TABLE Marca (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Crear tabla Producto
CREATE TABLE Producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT,
    id_marca INT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    unidad_medida VARCHAR(50),
    fecha_creacion DATE NOT NULL,
    estado ENUM('disponible', 'no disponible') DEFAULT 'disponible',
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor) ON DELETE SET NULL,
    FOREIGN KEY (id_marca) REFERENCES Marca(id_marca) ON DELETE SET NULL
);

-- Crear tabla Categoria
CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Crear tabla Producto_Categoria (Tabla de asociación)
CREATE TABLE Producto_Categoria (
    id_producto INT,
    id_categoria INT,
    PRIMARY KEY (id_producto, id_categoria),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto) ON DELETE CASCADE,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria) ON DELETE CASCADE
);