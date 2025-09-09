create database atividade loja

create table cliente(
CPF int primary key, 
nome_cliente varchar(50),
email_cliente varchar(50),
telefone_cliente varchar(20) 
);

create table produto(
cod_produto int primary key, 
preço_vendas float(10),
especie_destinada varchar(20),
quantidade int(20),
marca_produto varchar (20),
nome_produto varchar(30),
preço_compra float(10)
);

CREATE TABLE fornecedor(
CNPJ int PRIMARY KEY,
nome_fornecedor varchar(50),
produtos_forncecidos varchar(30),
cod_produto int, 
FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto)
);

CREATE TABLE compra(
id_compra int PRIMARY KEY,
data_compra varchar(10),
CPF int,
cod_produto int,
FOREIGN KEY (CPF) REFERENCES cliente(CPF),
FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto)
);

INSERT INTO cliente VALUES(5802312-21, 'Claudio', 'lolo@emil.com', '119210231');
INSERT INTO cliente VALUES(5202332-23, 'Claudo', 'lala@emil.com', '132212231');


INSERT INTO produto VALUES (101, 99.90, 'Cães adultos', 50, 'PetPlus', 'Ração Premium Carne', 60.00);
INSERT INTO produto VALUES (102, 49.90, 'Gatos filhotes', 30, 'CatLife', 'Ração Sabor Peixe', 30.00);

INSERT INTO fornecedor VALUES (1234567199, 'Distribuidora Animal LTDA', 'Ração Premium Carne', 102);
INSERT INTO fornecedor VALUES (9876, 'PetBrasil', 'Ração Peixe', 101);

INSERT INTO compra VALUES (1, '2025-09-01', 580231221, 101);
INSERT INTO compra VALUES (2, '2025-09-02', 520233223, 102);

SELECT * FROM cliente WHERE nome_cliente = 'Claudio';

SELECT * FROM produto WHERE especie_destinada = 'Cães adultos';

SELECT * FROM fornecedor WHERE nome_fornecedor = 'Distribuidora Animal LTDA';

SELECT * FROM compra WHERE data_compra = '2025-09-01';

UPDATE cliente SET telefone_cliente = '11999998888' WHERE CPF = 580231221;

UPDATE produto SET preço_vendas = 120.00 WHERE cod_produto = 101;

UPDATE fornecedor SET nome_fornecedor = 'Distribuidora Animal Brasil' WHERE CNPJ = 1234567199;

UPDATE compra SET data_compra = '2025-09-10' WHERE id_compra = 1;


