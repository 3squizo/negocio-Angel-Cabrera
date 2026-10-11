INSERT INTO categorias (nombre)
VALUES
	('Electronica'),
    ('Ropa'),
    ('Alimentos');

INSERT INTO productos (nombre, categoria_id, precio,stock)
VALUES 
	('Camisa', 2, 100, 20),
    ('Pantalon', 2, 210, 10),
    ('Zapatos', 2, 260, 15),
    ('Chamarra', 2, 120, 12),
    ('Cafe', 3, 20, 5),
    ('Chocolate', 3, 10, 10),
    ('Queso', 3, 50, 30),
    ('Aceite', 3, 60, 20),
    ('Telefono', 1, 500, 40),
    ('Audifonos', 1, 60, 10),
    ('Tableta', 1, 700, 64),
    ('Bocina', 1, 120, 60);

INSERT INTO clientes (nombre, telefono, email)
VALUES
	('Ana Lopez', '70123456', 'ana.lopez@example.com'),
    ('Carlos Mendez','71234567','carlos.mendez@example.com'),
    ('Maria Flores','72345678','maria.flores@example.com'),
    ('Diego Rojas','73456789','diego.rojas@example.com'),
    ('Lucia Vargas','74567890','lucia.vargas@example.com'),
    ('Pedro Salinas','75678901','pedro.salinas@example.com');

INSERT INTO pedidos(cliente_id,fecha,estado)
VALUES
	(1,'2026-09-01','Entregado'),
    (2,'2026-09-02','Pendiente'),
    (3,'2026-09-03','Enviado'),
    (1,'2026-09-04','Entregado'),
    (4,'2026-09-05','Pendiente'),
    (5,'2026-09-06','Enviado'),
    (2,'2026-09-07','Entregado'),
    (6,'2026-09-08','Pendiente'),
    (1,'2026-09-09','Enviado'),
    (3,'2026-09-10','Entregado');

INSERT INTO detalle_pedido(pedido_id,producto_id,cantidad,precio_unitario)
VALUES 
	(10,12,3,120),
    (9,11,3,700),
    (8,10,1,60),
    (7,9,7,500),
    (6,8,2,60),
    (5,7,8,50),
    (4,6,2,10),
    (3,5,6,20),
    (2,4,2,120),
    (1,3,1,260),
    (10,2,4,210),
    (9,1,2,100),
    (8,12,6,120),
    (7,11,4,700),
    (6,10,1,60),
    (5,9,2,500),
    (4,8,4,60),
    (3,7,7,50),
    (2,6,3,10),
    (1,5,1,20),
    (10,4,2,120),
    (9,3,6,260),
    (8,2,2,210),
    (7,1,6,100),
    (6,12,2,120);
    
