create database sistema_gestao;

use sistema_gestao;

create table clientes (id int primary key not null auto_increment, nome varchar (45), telefone varchar (15), data_nascimento date,
estado_civil int, sexo enum( 'M', 'F'), cidade varchar (45), idade int);

create table pedidos (id int primary key, cliente_id int, produto varchar (100), quantidade int);


create table produtos (id int , nome varchar (100), preco decimal (10,2));

create table estoque(produto_id int, quantidade_disponivel int);

INSERT INTO clientes (nome, telefone,Data_Nascimento, Estado_Civil, Sexo, Cidade, idade)
VALUES
('João', '(86)98456-2578', '1988-01-03', 'S', 'M', 'São Paulo', 36),
('Maria', '(86)98456-2578','1990-02-14', 'C', 'F', 'Rio de Janeiro', 34),
('Carlos', '(86)98456-2578','1988-01-03', 'S', 'M', 'São Paulo', 36),
('Ana', '(86)98456-2578','1995-06-21', 'S', 'F', 'Salvador', 28),
('Pedro', '(86)98456-2578','1988-01-03', 'C', 'M', 'São Paulo', 36);

INSERT INTO pedidos (id, cliente_id, produto, quantidade) VALUES
(1, 1, 'produto A', 10), (2, 2, 'produto B', 15), (3, 3, 'produto C', 30);

INSERT INTO produtos (nome, preco) VALUES
('Produto A', 100.50),
('Produto B', 200.00),
('Produto C', 150.75);

INSERT INTO estoque (produto_id, quantidade_disponivel) VALUES
(1, 50),
(2, 20),
(3, 10);  
select * from clientes;
select * from produtos;
select * from pedidos;
select * from estoque;
-- parte 2 - operações crud
-- inserção de dados

INSERT INTO clientes (nome, telefone, Data_Nascimento, Estado_Civil, Sexo, Cidade, idade)
VALUES
('adolf', '(86)9851-9647', '1895-09-25', 'S', 'M', 'alemanha', '36');

select * from clientes;

INSERT INTO pedidos (id, cliente_id, produto, quantidade) VALUES
(4, 4, 'Produto D', 30);

select * from produtos;

INSERT INTO produtos (id, nome, preco) VALUES
(4, 'Produto D', 199.50);

select * from pedidos;

INSERT INTO estoque (produto_id, quantidade_disponivel) VALUES
(4, 50);

select * from estoque;

select  * from clientes, pedidos;
desc pedidos;
