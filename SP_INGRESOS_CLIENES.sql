CREATE PROCEDURE CalcularIngresosPorCliente
    @id_cliente INT
AS
BEGIN
    SELECT SUM(oa.subtotal) AS ingresos_totales
    FROM Ordenes o
    INNER JOIN Ordenar_articulos oa ON o.id_pedido = oa.order_id
    WHERE o.id_cliente = @id_cliente;
END;

EXEC CalcularIngresosPorCliente 2;