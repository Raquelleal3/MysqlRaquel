create database bd_Amarzenador;
create table Produtos(id_nf int not null, 
id_item int not null, 
cod_prod int primary key not null,
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
 (5, 1, 3, 15.00, 3),
 (5, 2, 5, 30.00, 6),
 (6, 1, 1, 25.00, 22, 15),
 (6, 2, 3, 15.00, 25, 20),
 (7, 1, 1, 25.00, 10, 3),
 (7, 2, 2, 13.50, 10, 4),
 (7, 3, 3, 15.00, 10, 4),
 (7, 4, 5, 30.00, 10, 1);
select * from Produtos;
