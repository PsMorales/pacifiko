-- Tabla de Clientes
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    correo_electronico VARCHAR(100),
    telefono VARCHAR(20)
);

-- Tabla de Productos
CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(100),
    precio DECIMAL(10, 2),
    cantidad_stock INT
);

-- Tabla de Órdenes
CREATE TABLE Ordenes (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    fecha_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);

-- Tabla de Ordenar artículos
CREATE TABLE Ordenar_articulos (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    cantidad INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Ordenes (id_pedido),
    FOREIGN KEY (product_id) REFERENCES Productos (id_producto)
);