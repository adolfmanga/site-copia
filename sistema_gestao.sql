create database sistema_gestao;

use sistema_gestao;

-- 2. Criação de Tabelas

create table clientes (id int primary key not null auto_increment, nome varchar (45), telefone varchar (15), data_nascimento date,
estado_civil int, sexo enum( 'M', 'F'), cidade varchar (45), idade int);

create table pedidos (id int primary key, cliente_id int, produto varchar (100), quantidade int);


create table produtos (id int primary key, nome varchar (100), preco decimal (10,2));

create table estoque(produto_id int, quantidade_disponivel int);

-- 3. Inserção de Dados

INSERT INTO clientes (nome, telefone,Data_Nascimento, Estado_Civil, Sexo, Cidade, idade)
VALUES
('João', '(86)98456-2578', '1988-01-03', 'S', 'M', 'São Paulo', 36),
('Maria', '(86)98456-2578','1990-02-14', 'C', 'F', 'Rio de Janeiro', 34),
('Carlos', '(86)98456-2578','1988-01-03', 'S', 'M', 'São Paulo', 36),
('Ana', '(86)98456-2578','1995-06-21', 'S', 'F', 'Salvador', 28),
('Pedro', '(86)98456-2578','1988-01-03', 'C', 'M', 'São Paulo', 36);

INSERT INTO pedidos (id, cliente_id, produto, quantidade) VALUES
(1, 1, 'produto A', 10), (2, 2, 'produto B', 15), (3, 3, 'produto C', 30);

INSERT INTO produtos (id, nome, preco) VALUES
(1, 'Produto A', 100.50),
(2, 'Produto B', 200.00),
(3, 'Produto C', 150.75);

INSERT INTO estoque (produto_id, quantidade_disponivel) VALUES
(1, 50),
(2, 20),
(3, 10);  

-- 4. Operações CRUD



-- 5. Consultas SQL Avançadas

--  Selecione todos os clientes que têm mais de 30 anos.

select * from clientes where  idade > 30;

alter table clientes add column endereco varchar (100);

-- Atualize o endereço de um cliente específico

update clientes set endereco =	'rua das almas N 15'  where id=1;

update clientes set endereco =	'rua das quengas'  where id=2;

update clientes set endereco =	'rua das baratas N 24'  where id=3;

update clientes set endereco =	'rua dos macacos N 13'  where id=2;

update clientes set endereco =  'rua dos coll aberto' where id=5;

-- Delete todos os pedidos feitos por um cliente específico.

delete from pedidos where id = 1;

-- Insira múltiplos produtos no estoque de uma só vez.
INSERT INTO estoque (produto_id, quantidade_disponivel) VALUES
(4, 10),
(5, 40),
(6, 70);

-- Atualize o preço de todos os produtos com um aumento de 10%.

update produtos set preco = preco * 1.1 where id = 1; 
update produtos set preco = preco * 1.1 where id = 2;
update produtos set preco = preco * 1.1 where id = 3;

alter table produtos modify column id int auto_increment primary key;

select * from clientes;
select * from produtos;
desc produtos;

select * from pedidos;
select * from estoque;
