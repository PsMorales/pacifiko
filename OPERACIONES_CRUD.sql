INSERT INTO Productos (id_producto, nombre_producto, precio, cantidad_stock)
VALUES
	(1, 'Laptop', 1000.00, 50),
	(2, 'SmartPhone', 3000.00, 75),
	(3, 'Smartwatch', 1350.00, 100),
	(4, 'Hub Usb', 100.00, 500),
	(5, 'HDMI Cable', 75.00, 300),
	(6, 'graphics card', 9000.00, 30),
	(7, 'motherboard', 5000.00, 10),
	(8, 'RAM Memories', 700.00, 80),
	(9, 'power supply', 900.00, 45),
	(10, 'processor', 9000.00, 10),
	(11, 'liquid refrigeration', 750.00, 6),
	(12, 'Case', 650.00, 25),
	(13, 'Impresora láser', 900.99, 15),
	(14, 'Tablet Android', 6000.99, 35),
	(15, 'Monitor LED 24"', 3500.99, 45),
	(16, 'Laptop ultradelgada', 8000.99, 20),
	(17, 'Smartphone de gama alta', 13000.99, 30),
	(18, 'Impresora de tinta', 700.99, 25),
	(19, 'Escáner portátil', 650.99, 15),
	(20, 'Proyector HD', 9000.99, 10);

INSERT INTO Clientes (id_cliente, nombre, apellido, correo_electronico, telefono)
VALUES
    (1, 'Juan', 'Pérez', 'juan.perez@example.com', '555-123-4567'),
    (2, 'María', 'Gómez', 'maria.gomez@example.com', '555-987-6543'),
    (3, 'Carlos', 'López', 'carlos.lopez@example.com', '555-234-5678'),
    (4, 'Ana', 'Rodríguez', 'ana.rodriguez@example.com', '555-876-5432'),
    (5, 'Pedro', 'Martínez', 'pedro.martinez@example.com', '555-345-6789'),
	(6, 'Laura', 'Fernández', 'laura.fernandez@example.com', '555-678-1234'),
    (7, 'Javier', 'García', 'javier.garcia@example.com', '555-456-7890'),
    (8, 'Isabel', 'Luna', 'isabel.luna@example.com', '555-234-5678'),
    (9, 'Ricardo', 'Díaz', 'ricardo.diaz@example.com', '555-987-6543'),
    (10, 'Sofía', 'Sánchez', 'sofia.sanchez@example.com', '555-765-4321'),
    (11, 'Luis', 'Ramírez', 'luis.ramirez@example.com', '555-321-8765'),
    (12, 'Valentina', 'Gutiérrez', 'valentina.gutierrez@example.com', '555-543-2109'),
    (13, 'Diego', 'Hernández', 'diego.hernandez@example.com', '555-890-1234'),
    (14, 'Marcela', 'Torres', 'marcela.torres@example.com', '555-432-1098'),
    (15, 'Alejandro', 'Mendoza', 'alejandro.mendoza@example.com', '555-109-8765'),
    (16, 'Lorena', 'Jiménez', 'lorena.jimenez@example.com', '555-876-5432'),
    (17, 'Roberto', 'Ortega', 'roberto.ortega@example.com', '555-678-9012'),
    (18, 'Carmen', 'Vargas', 'carmen.vargas@example.com', '555-543-2109'),
    (19, 'Miguel', 'Peralta', 'miguel.peralta@example.com', '555-901-2345'),
    (20, 'Patricia', 'Cabrera', 'patricia.cabrera@example.com', '555-345-6789');


INSERT INTO Ordenes (id_pedido, id_cliente, fecha_pedido)
VALUES
    (1, 1, '2023-09-01'),
    (2, 2, '2023-09-02'),
    (3, 3, '2023-09-03'),
    (4, 4, '2023-09-04'),
    (5, 5, '2023-09-05'),
	(6, 6, '2023-09-06'),
    (7, 7, '2023-09-07'),
    (8, 8, '2023-09-08'),
    (9, 9, '2023-09-09'),
    (10, 10, '2023-09-10'),
    (11, 11, '2023-09-11'),
    (12, 12, '2023-09-12'),
    (13, 13, '2023-09-13'),
    (14, 14, '2023-09-14'),
    (15, 15, '2023-09-15'),
    (16, 16, '2023-09-16'),
    (17, 17, '2023-09-17'),
    (18, 18, '2023-09-18'),
    (19, 19, '2023-09-19'),
    (20, 20, '2023-09-20');

INSERT INTO Ordenar_articulos (order_item_id, order_id, product_id, cantidad, subtotal)
VALUES
    (1, 1, 1, 2, 1999.98),
    (2, 1, 2, 1, 499.99),
    (3, 2, 3, 3, 599.97),
    (4, 3, 4, 2, 599.98),
    (5, 4, 5, 1, 249.99),
	(6, 6, 6, 1, 69.99),
    (7, 7, 7, 2, 39.98),
    (8, 8, 8, 3, 239.97),
    (9, 9, 9, 1, 59.99),
    (10, 10, 10, 2, 99.98),
    (11, 11, 11, 1, 69.99),
    (12, 12, 12, 2, 179.98),
    (13, 13, 13, 1, 149.99),
    (14, 14, 14, 3, 539.97),
    (15, 15, 15, 1, 179.99),
    (16, 16, 16, 2, 2599.98),
    (17, 17, 17, 1, 699.99),
    (18, 18, 18, 2, 199.98),
    (19, 19, 19, 1, 129.99),
    (20, 20, 20, 3, 899.97);


UPDATE Productos
SET cantidad_stock = 75
WHERE id_producto = 3;

DELETE FROM Ordenes WHERE id_pedido = 10;
DELETE FROM Ordenar_articulos WHERE order_id = 10;

SELECT c.nombre, c.apellido
FROM Clientes c
INNER JOIN Ordenes o ON c.id_cliente = o.id_cliente
WHERE o.id_pedido = 5;

SELECT p.nombre_producto, SUM(oa.subtotal) AS ingresos_totales
FROM Productos p
INNER JOIN Ordenar_articulos oa ON p.id_producto = oa.product_id
GROUP BY p.nombre_producto;