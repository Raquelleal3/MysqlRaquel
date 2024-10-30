SELECT * FROM cidades;

#exercio-1
ALTER TABLE cidades rename to Codigo_Postal;
ALTER TABLE Código_Postal rename to Codigo_postal;

#exercio-2
SELECT * FROM Codigo_postal;

#exercio-3
ALTER Table Codigo_postal rename column Area to Area_km2;

#exercio-4
SELECT AVG(Area_Km2) AS media_Area FROM Codigo_postal;

SELECT * FROM codigo_postal;

#exercios-5
SELECT Nome, Codigo_postal
FROM Codigo_postal
Where Area_Km2 > 80;

#exercios-6
SELECT * FROM Codigo_postal WHERE codigo_postal = 7830;