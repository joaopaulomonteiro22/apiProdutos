CREATE DATABASE bd_apiprodutos;
USE bd_apiprodutos;

CREATE TABLE categoria(
	id INTEGER AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL UNIQUE,
	PRIMARY KEY(id)


);
CREATE TABLE produto(
	id INTEGER AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	preco DECIMAL(10,2) NOT NULL,
	quantidade INTEGER  NOT NULL,
	categoria_id INTEGER NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(categoria_id) REFERENCES categoria(id)


);

insert into categoria(nome) values ('informatica');

insert into categoria(nome) values ('eletrônicos');
insert into categoria(nome) values ('livraria');
insert into categoria(nome) values ('vestuário');
insert into categoria(nome) values ('ioutros');

