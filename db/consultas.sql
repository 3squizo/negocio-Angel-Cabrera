-- 1. Productos con el nombre de su categoría, ordenados por nombre (JOIN, ORDER BY).
SELECT C.nombre, P.nombre
FROM productos as P
INNER JOIN categorias as C 
ON C.id = p.categoria_id
ORDER BY p.nombre

-- 2. Productos con menos de 5 unidades en stock (WHERE).
SELECT *
FROM productos
WHERE stock < 5

-- 3. Precio promedio por categoría (GROUP BY, AVG).
SELECT C.nombre,AVG(P.precio) 
FROM productos as P
INNER JOIN categorias as C
ON C.id=P.categoria_id
GROUP BY C.nombre;

-- 4. Pedidos de un cliente con su fecha y estado (JOIN, WHERE).
SELECT C.nombre, P.fecha, P.estado
FROM pedidos as P
INNER JOIN clientes as C ON P.cliente_id = C.id
WHERE C.nombre = 'Ana Lopez'

-- 5. Total en dinero de cada pedido (SUM, GROUP BY).
SELECT p.id, SUM(dp.cantidad*dp.precio_unitario) as total
FROM detalle_pedido dp
INNER JOIN pedidos p ON dp.pedido_id = p.id
GROUP BY p.id

-- 6. Clientes con más de 2 pedidos (GROUP BY, HAVING).
SELECT C.nombre 
FROM clientes as c
INNER JOIN pedidos as p ON p.cliente_id = c.id
GROUP BY c.nombre
HAVING COUNT(P.cliente_id) > 2;

-- 7. Eliminar un cliente sin pedidos (DELETE).
DELETE FROM clientes
WHERE NOT EXISTS (
	SELECT *
    FROM pedidos AS p
    WHERE p.cliente_id = clientes.id
)