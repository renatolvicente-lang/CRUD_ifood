CREATE DATABASE bd_ifood;

use bd_ifood;

CREATE TABLE cliente(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(45) NOT NULL,
    endereco VARCHAR(455) NOT NULL
);

CREATE TABLE restaurante(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(45) NOT NULL,
    telefone VARCHAR(45) NOT NULL,
    endereco VARCHAR(455) NOT NULL
);

CREATE TABLE pedidos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_cliente INT,
    id_restaurante INT,
    data_pedido DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    status_pedido ENUM('entregue', 'em preparo', 'recebido') DEFAULT 'recebido',
    FOREIGN KEY(id_restaurante) REFERENCES restaurante(id),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id)
);