CREATE database empresa;
use empresa;

create table clientes(
id int(3),
nome varchar(40),
email varchar(55),
telefone varchar(20),
data_cadastro varchar(10));

create table pedidos(
id_pedido int(10),
id_cliente int(10),
produto varchar(25),
valor_total int(10));

insert into clientes (id, nome, email, telefone, data_cadastro) values
(1, "AndréGreroki", "andrezanattagreroski@gmail.com", "11975460737", "05/10/2024"),
(2, "PedroHiago", "pedropaulino@gmail.com", "6722234297", "22/03/2023"),
(3, "Samuel", "samuelcosta@gmail.com", "8339782154", "17/12/2022"),
(4, "Renan", "renanxd@gmail.com", "6224037869", "31/12/2021"),
(5, "PedroSoares", "pedrosoares@gmail.com", "6327324428", "10/05/2022");

insert into pedidos (id_pedido, id_cliente, produto, valor_total) values
(1, 1, "Playstation 5", 5000.00),
(2, 2, "Xbox Series S", 2670.00),
(3, 3, "Xbox Series X", 4500.00),
(4, 4, "Nintendo Switch OLED", 2199.00),
(5, 5, "Playstation 2", 599.00);

select * from cliente;

select * from pedidos;

select * from pedidos
order by valor_total asc;
