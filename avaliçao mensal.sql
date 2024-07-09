USE db_aula_revisao;
select * from clientes;
select * from clientes;
select data_nascimento, count(*) AS 'data_nascimento' from clientes group by data_nascimento;
create database sistema_gestao;
create table clientes (id int primary key not null, nome varchar (45), telefone int, data_nascimento date, estado_civil varchar (45), sexo enum ('M', 'F'), cidade varchar (30), idade int);


show tables;
desc produtos;
ALTER TABLE produtos RENAME COLUMN Id_Produtos TO
id;
ALTER TABLE produtos RENAME COLUMN Id_Produtos TO
id;
use sistema_gestao;
create table clientes (id int primary key not null, nome varchar (45), telefone int, data_nascimento date, estado_civil varchar (45), sexo enum ('M', 'F'), cidade varchar (30), idade int);
create table pedidos (id int primary key not null, id_clientes int not null);
create table produtos (id int not null, id_clientes int not null, nome varchar (45), preco decimal (10,2));
create table estoque (produto_id int not null, quantidade_disponivel int);
INSERT INTO clientes (nome, Data_Nascimento, Estado_Civil, Sexo, Cidade, idade)
VALUES
('1', 'João', '(86) 99934-0212', '1988-01-03', 'S', 'M', 'São Paulo', 36),
('2', 'Maria', '1990-02-14', 'C', 'F', 'Rio de Janeiro', 34),
('3', 'Carlos', '1988-01-03', 'S', 'M', 'São Paulo', 36),
('4', 'Ana', '1995-06-21', 'S', 'F', 'Salvador', 28),
('5', 'Pedro', '1988-01-03', 'C', 'M', 'São Paulo', 36); 
ALTER TABLE clientes MODIFY COLUMN telefone VARCHAR(20);
INSERT INTO clientes (id, nome, telefone, data_nascimento , estado_civil, sexo, cidade, idade) VALUES
('1', 'João', '(86)99934-0212', '1988-01-03', 'S', 'M', 'São Paulo', '36');
('2', 'Maria', '1990-02-14', 'C', 'F', 'Rio de Janeiro', 34),
('3', 'Carlos', '1988-01-03', 'S', 'M', 'São Paulo', 36),
('4', 'Ana', '1995-06-21', 'S', 'F', 'Salvador', 28),
('5', 'Pedro', '1988-01-03', 'C', 'M', 'São Paulo', 36); 

INSERT INTO pedidos (id_clientes, id) VALUES
('1', '6'),
('2', '7'),
('3', '8'),
('4', '9'),
('5', '10');
desc pedidos;
select * from pedidos;
INSERT INTO produtos (id, id_clientes, nome, preco) VALUES
('11', '1', 'capacete', '99.90'),
('12', '2', 'farol', '29.90'),
('13', '3', 'pneus', '299.90'),
('14', '4', 'bag', '79.90'),
('15', '5', 'calhas', '89.90');
INSERT INTO estoque (produto_id, quantidade_disponivel) VALUES
(11, 50),
(12, 80),
(13, 10),
(14, 40),
(15, 90);
select * from clientes;
 INSERT INTO clientes (id, nome, telefone, data_nascimento , estado_civil, sexo, cidade, idade) VALUES
('2', 'Maria', '(86)99979-7564','1990-02-14', 'C', 'F', 'Rio de Janeiro', 34),
('3', 'Carlos','(86)99979-7564', '1988-01-03', 'S', 'M', 'São Paulo', 36),
('4', 'Ana', '(86)99979-7564','1995-06-21', 'S', 'F', 'Salvador', 28),
('5', 'Pedro', '(86)99979-7564', '1988-01-03', 'C', 'M', 'São Paulo', 36);
select * from clientes;
ALTER TABLE pedidos ADD COLUMN quantidade int, ADD
COLUMN produto VARCHAR(30);

UPDATE pedidos SET quantidade = 5, produto = 'capacete' WHERE id = '10';
