CREATE DATABASE Joins5;

USE Joins5;

CREATE  TABLE Categorias(ID_categoria int,
 Título VARCHAR(40),
 PRIMARY KEY(ID_categoria)
 );


CREATE TABLE Filmes(ID_filme int,
 ID_categoria int,
 Nome VARCHAR(40),
 PRIMARY KEY(ID_filme),
 FOREIGN KEY(ID_categoria) REFERENCES Categorias(ID_categoria)
 );
 
 
 CREATE TABLE Autores(ID_autores INT,
Nome_autores VARCHAR(20),
ID_filme int,
PRIMARY KEY (ID_autores),
FOREIGN KEY (ID_filme) REFERENCES Filmes (ID_filme)
);

 
 INSERT INTO Autores VALUES
 (1, 'Angelina Jolie', 4),
 (2, 'Will Smith', 1);
 
 
 INSERT INTO Filmes VALUES
 (1,1 , 'A Vitoria'),
 (4, 4, 'Titanic'),
 (5, 5, 'O Atletismo');
 
 INSERT INTO Categorias VALUES
 (1,'Ação'),
 (4, 'Romance'),
 (5, 'SPORT');
 
 #Exercio 1
 SELECT Filmes.Nome
 FROM Filmes
 LEFT JOIN Categorias
 ON Categorias.ID_categoria = Filmes.ID_filme
 WHERE Categorias.Título = "SPORT"
 ORDER BY Nome ASC;
 
#Exercio 2
SELECT Autores.Nome_autores
FROM Autores 
LEFT JOIN Filmes
ON  Autores.Id_filme = Filmes.ID_filme
WHERE Autores.Nome_autores = "Titanic"
ORDER BY Nome_autores ASC;


 
