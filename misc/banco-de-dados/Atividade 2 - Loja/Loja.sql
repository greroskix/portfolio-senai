create database loja;
use loja;

create table produtos(
id int(3),
nome varchar(70),
categoria varchar(30),
preco decimal(5.5),
quantidade_estoque int(10));

insert into produtos (id, nome, categoria, preco, quantidade_estoque) values
(1, "Tênis Nike Dunk Low Preto", "Tênis", 854, 544),
(2, "Slide Yeezy Adidas", "Chinelos e Slides", 4322, 87),
(3, "Tênis Travis Scott x Nike SB Dunk Low Cactus Jack", "Tênis", 10.200, 22),
(4, "Chuteira Nike Beco 2 Society", "Chuteira", 854, 789),
(5, "Chinelo Nike Victori One", "Chinelos e Slides", 133, 834);

delete from produtos
where id = 3;

delete from produtos
where id = 2;

update produtos
set nome = "Tênis Nike Air Max Plus"
where id = 1;

update produtos
set preco = 99.99
where id= 1;

select * from produtos;

select * from produtos
where quantidade_estoque > 10 and quantidade_estoque < 100;