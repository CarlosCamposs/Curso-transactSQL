-- SELECT dentro de SELECT
-- Veremos una b�squeda m�s avanzada usando una sentencia SELECT dentro de otra

CREATE DATABASE Tablas_Varias;

USE Tablas_Varias;

-- Inspeccionamos la tabla
SELECT * FROM Poblacion_Mundial;

-- Muestra las columnas pais y poblaci�n de aquellos registros cuya "poblacion" sea mayor o igual a la de M�xico
SELECT Pais, Poblacion FROM Poblacion_Mundial
	WHERE Poblacion>=
	(SELECT Poblacion FROM Poblacion_Mundial WHERE Pais='Mexico');-- Esta l�nea devuelve el valor de "poblacion" de M�xico

		-- La segunda consulta sirvi� como referencia para la consulta original que quer�a