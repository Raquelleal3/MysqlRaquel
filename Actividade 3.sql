create database bd_Amarzenador;
create table Produtos(id_nf int not null, 
id_item int not null, 
cod_prod int not null,
valor_unit decimal(4,2) not null, 
quantidade int not null, 
desconto int null);

insert into Produtos(id_nf,
 id_item, 
 cod_prod, 
 valor_unit, 
 quantidade,
 desconto) values
 (4, 1, 5, 30.00, 10, 15),
 (4, 2, 4, 10.00, 12, 5),
 (4, 3, 1, 25.00, 13, 5),
 (4, 4, 2, 13.50, 15, 5),
 (5, 1, 3, 15.00, 3, null),
 (5, 2, 5, 30.00, 6, null),
 (6, 1, 1, 25.00, 22, 15),
 (6, 2, 3, 15.00, 25, 20),
 (7, 1, 1, 25.00, 10, 3),
 (7, 2, 2, 13.50, 10, 4),
 (7, 3, 3, 15.00, 10, 4),
 (7, 4, 5, 30.00, 10, 1);
select * from Produtos;
truncate table Produtos;

#Exercio- 1
select id_nf, id_item, cod_prod, valor_unit
from Produtos
where desconto is null;

#Exercicio-2
set SQL_safe_updates = 0;
update Produtos 
set desconto= 0
where desconto is null;

#Exercicio_ 3
select cod_prod, quantidade
from Produtos 
where desconto > 10 and  desconto< 20;

#Exercicios-4
select quantidade, valor_unit
from Produtos
where cod_prod = 2;
