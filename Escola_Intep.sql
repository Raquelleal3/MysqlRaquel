CREATE DATABASE Escola;
USE Escola;
 CREATE TABLE Estudantes(
 ID_Estudantes INT PRIMARY KEY,
 Nome VARCHAR(30) NOT NULL,
 Idade INT NOT NULL,
 Data_nascimento DATE NOT NULL
 );
 
 
 INSERT INTO Estudantes(ID_Estudantes, Nome, Idade, Data_nascimento)VALUES
 (1 ,'Ana Sousa', 14, '2010-01-07'),
 (2 ,'Adma Vaz', 15, '2009-05-09'),
 (3 ,'Cintia Almeida', 16, '2008-04-8'),
 (4 ,'Fidel Leal', 14, '2010-10-10'),
 (5 ,'Naida Barros', 17, '2007-06-07'),
 (6, 'Sara Afonso', 21, '2003-08-09');

#eXERCICIO 1 
 SELECT * FROM Estudantes;
 
 #EXERCICIO 2
 SELECT * FROM  Estudantes 
 WHERE Idade >18;
 
 TRUNCATE TABLE Estudantes;
 
 #EXERCIO 3
 SELECT Estudantes.Nome, Estudantes.Idade
 FROM Estudantes
 ORDER BY Estudantes.Idade DESC;
 
 #Exercicio 4
 SELECT Estudantes.Nome, Estudantes.Idade
 FROM Estudantes
 ORDER BY Estudantes.Idade DESC LIMIT 3;
 
 #Exercicio 5
 SELECT COUNT(Estudantes.Nome)
 AS Total_Estudantes
 FROM Estudantes;
 
 #Exercio &
 SELECT AVG(Estudantes.Idade)
 FROM Estudantes;
 
 #Exercicio 9
 SELECT MAX(Estudantes.Idade) AS Idade_minima, 
 MIN(Estudantes.Idade) AS Idade_maxima
 FROM Estudantes;