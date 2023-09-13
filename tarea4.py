def productos_mas_vendidos(pedidos, n, productos_nombre):
    cantidad_vendida = {}
    for pedido in pedidos:
        product_id = pedido['product_id']
        cantidad = pedido['cantidad']
        cantidad_vendida[product_id] = cantidad_vendida.get(product_id, 0) + cantidad
    
    productos_ordenados = sorted(cantidad_vendida.items(), key=lambda x: x[1], reverse=True)
    productos_top_n = [(productos_nombre.get(p[0], 'Desconocido'), p[1]) for p in productos_ordenados[:n]]
    
    return productos_top_n

lista_pedidos = [
    {'product_id': 1, 'cantidad': 5},
    {'product_id': 2, 'cantidad': 3},
    {'product_id': 3, 'cantidad': 7},
    {'product_id': 4, 'cantidad': 2},
    {'product_id': 5, 'cantidad': 6}
]

productos_nombre = {
    1: 'Producto A',
    2: 'Producto B',
    3: 'Producto C',
    4: 'Producto D',
    5: 'Producto E'
}

n_productos_top = 2
productos_top = productos_mas_vendidos(lista_pedidos, n_productos_top, productos_nombre)
for nombre, cantidad in productos_top:
    print(f"{nombre}: {cantidad} unidades")
