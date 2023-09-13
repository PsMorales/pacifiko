def buscar_producto(productos, nombre_producto):
    for producto in productos:
        if producto['product_name'] == nombre_producto:
            return producto
    return None

productos = [
    {'product_id': 1, 'product_name': 'Producto A', 'price': 10.0},
    {'product_id': 2, 'product_name': 'Producto B', 'price': 20.0},
    {'product_id': 3, 'product_name': 'Producto C', 'price': 30.0}
]

nombre_buscado = 'Producto B'
producto_encontrado = buscar_producto(productos, nombre_buscado)
if producto_encontrado:
    print(f"Producto encontrado: {producto_encontrado['product_name']} - Precio: ${producto_encontrado['price']}")
else:
    print(f"Producto '{nombre_buscado}' no encontrado.")
