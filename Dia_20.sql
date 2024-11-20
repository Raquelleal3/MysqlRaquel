CREATE DATABASE Escola1;

USE Escola1;

CREATE TABLE Estudantes(ID_estudante INT,
Nome VARCHAR(20),
Idade INT,
Data_nascimento DATE,
PRIMARY KEY(ID_estudante)
);

INSERT INTO Estudantes VALUES
(1, 'Fidel Leal', 17, '2007-01-06'),
(2, 'Sara Afonso', 16, '2006-05-08'),
(3,'Clara Almeida', 17, '2007-06-10');

 SET SQL_SAFE_UPDATES=0;
 
UPDATE Estudantes
SET Idade = 12, Data_nascimento = '2012-06-10'
WHERE Nome = "Clara Almeida";

DELETE FROM Estudantes
WHERE Idade > 16;


CREATE TABLE Sum (Pedido_id INT,
Enpresa VARCHAR(20),
Quantidade INT
);


INSERT INTO Sum VALUES
(1, 'A', 20),
(2, 'B', 50),
(3, 'B', 50);

INSERT INTO Sum VALUES
(1, 'A', null);

INSERT INTO Sum VALUES
(4, 'C', null);

INSERT INTO Sum VALUES
(5, 'C', 10);

INSERT INTO Sum VALUES
(6, 'C', 60);


SELECT  SUM(Quantidade) 
As Sum_total 
FROM Sum;

SELECT Enpresa, SUM(Quantidade)
As Sum_total
FROM Sum
GROUP BY Enpresa;

SELECT * FROM Sum;

SELECT SUM(Idade)
As Total_idade
FROM Estudantes;

SELECT SUM(Idade)
As Total_idade
FROM Estudantes
WHERE Idade > 18;

SELECT COUNT(*) 
As Total_estudantes
FROM Estudantes;


SELECT COUNT(*) 
As Total_estudantes
FROM Estudantes
WHERE Idade >20;

SELECT AVG(Quantidade)
As Media_Quantidade
FROM Sum;

SELECT Enpresa, AVG(Quantidade)
As MediaEnpresa
FROM Sum
GROUP BY Enpresa;

CREATE TABLE Minmax(
PedidoId INT,
Cliente VARCHAR(20),
Data_entrega DATE,
PRIMARY KEY(PedidoId)
);

INSERT INTO Minmax VALUES
(1, 'Sara', '2007-01-06'),
(2, 'Laura', '2006-05-08'),
(3,'Clara', '2007-06-10');

SELECT MIN(Data_entrega)
FROM Minmax;

SELECT Max(Data_entrega)
FROM Minmax;





