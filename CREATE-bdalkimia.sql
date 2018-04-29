CREATE TABLE ws_Usuario(
	id int NOT NULL PRIMARY KEY,
	nome VARCHAR(255),
	sobrenome VARCHAR(255),
	email VARCHAR(255),
	senha VARCHAR(255),
	telefone VARCHAR(255)
);

CREATE TABLE ws_Endereco(
	id int NOT NULL PRIMARY KEY,
	end_linha_1 VARCHAR(255),
	end_linha_2 VARCHAR(255),
	cidade VARCHAR(255),
	cep VARCHAR(255),
	pais VARCHAR(255),
	estado VARCHAR(255),
	id_usuario int NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES ws_Usuario(id)
);

CREATE TABLE ws_Status(
	id int NOT NULL PRIMARY KEY,
	status VARCHAR(255)
);

CREATE TABLE ws_Produto(
	id int NOT NULL PRIMARY KEY,
	nome VARCHAR(255),
	preco VARCHAR(255),
	descricao VARCHAR(255),
	peso VARCHAR(255),
	comprimento VARCHAR(255),
	altura VARCHAR(255),
	largura VARCHAR(255)
);

CREATE TABLE ws_Pedido(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_pedido int NOT NULL,
	forma_pagamento VARCHAR(255),
	data VARCHAR(255),
	id_status int NOT NULL,
	id_produto int NOT NULL,
	id_usuario int NOT NULL,
	FOREIGN KEY (id_status) REFERENCES ws_Status(id),
	FOREIGN KEY (id_produto) REFERENCES ws_Produto(id),
	FOREIGN KEY (id_usuario) REFERENCES ws_Usuario(id)
);