CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE NOT NULL
)

CREATE TABLE productos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria_id INT, 
    FOREIGN KEY(categoria_id) REFERENCES categorias(id),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
)

CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES  clientes(id),
    fecha DATE NOT NULL,
    estado VARCHAR(50) NOT NULL
)

CREATE TABLE detalle_pedido(
	id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    producto_id INT NOT NULL,
    FOREIGN KEY (producto_id) REFERENCES productos(id),
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL
)
