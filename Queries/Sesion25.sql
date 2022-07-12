
-- Existe un comando que nos permite MOSTRAR UNA CIERTA CANTIDAD de filas al momento de hacer una query
-- ese comando es SELECT TOP

USE Tablas_Varias;

SELECT Pais, Poblacion FROM Poblacion_Mundial
	WHERE Poblacion>=
		(SELECT Poblacion FROM Poblacion_Mundial WHERE Pais='Mexico')
	ORDER BY Poblacion DESC;


-- Si quisieramos que solo nos desplegara las 3 primeras filas ponemos SELECT TOP 3

SELECT TOP 3 Pais, Poblacion FROM Poblacion_Mundial
	WHERE Poblacion>=
		(SELECT Poblacion FROM Poblacion_Mundial WHERE Pais='Mexico')
	ORDER BY Poblacion DESC;

-- Si quisieramos que solo nos desplegara las 3 últimas filas cambiamos el order de ORDER BY y ponemos SELECT TOP 3

SELECT TOP 3 Pais, Poblacion FROM Poblacion_Mundial
	WHERE Poblacion>=
		(SELECT Poblacion FROM Poblacion_Mundial WHERE Pais='Mexico')
	ORDER BY Poblacion ASC;

