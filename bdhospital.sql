create database bd_Portugal;
create table Cidades(id_cidade int auto_increment primary key,
nome char(15) not null,
codigo_postal varchar(15));

insert into Cidades (nome, codigo_postal)values 
('lisboa', '3542-380'),
('Figueira_Foz', '3654-563');

select * from Cidades;
truncate table Cidades;