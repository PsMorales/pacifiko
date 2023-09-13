def calcular_total_carrito(carrito, productos):
    total = 0
    for item in carrito:
        product_id = item['product_id']
        cantidad = item['cantidad']
        producto = next((p for p in productos if p['product_id'] == product_id), None)
        if producto:
            total += producto['price'] * cantidad
    return total

productos = [
    {'product_id': 1, 'product_name': 'Producto A', 'price': 10.0},
    {'product_id': 2, 'product_name': 'Producto B', 'price': 20.0},
    {'product_id': 3, 'product_name': 'Producto C', 'price': 30.0}
]

carrito_compras = [
    {'product_id': 1, 'cantidad': 2},
    {'product_id': 3, 'cantidad': 1}
]

total = calcular_total_carrito(carrito_compras, productos)
print(f"Total del carrito: ${total}")
