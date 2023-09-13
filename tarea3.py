def calcular_total_con_descuento(carrito, productos):
    total = 0
    for item in carrito:
        product_id = item['product_id']
        cantidad = item['cantidad']
        producto = next((p for p in productos if p['product_id'] == product_id), None)
        if producto:
            precio = producto['price']
            porcentaje_descuento = producto.get('porcentaje_descuento', 0)
            precio_con_descuento = precio * (1 - porcentaje_descuento / 100)
            total += precio_con_descuento * cantidad
    return total

productos_con_descuento = [
    {'product_id': 1, 'product_name': 'Producto A', 'price': 10.0, 'porcentaje_descuento': 10},
    {'product_id': 2, 'product_name': 'Producto B', 'price': 20.0},
    {'product_id': 3, 'product_name': 'Producto C', 'price': 30.0, 'porcentaje_descuento': 5}
]

carrito_compras_descuento = [
    {'product_id': 1, 'cantidad': 2},
    {'product_id': 3, 'cantidad': 1}
]

total_descuento = calcular_total_con_descuento(carrito_compras_descuento, productos_con_descuento)
print(f"Total del carrito con descuento: ${total_descuento}")
