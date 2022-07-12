-- SELECT dentro de SELECT
-- Veremos una búsqueda más avanzada usando una sentencia SELECT dentro de otra

CREATE DATABASE Tablas_Varias;

USE Tablas_Varias;

-- Inspeccionamos la tabla
SELECT * FROM Poblacion_Mundial;

-- Muestra las columnas pais y población de aquellos registros cuya "poblacion" sea mayor o igual a la de México
SELECT Pais, Poblacion FROM Poblacion_Mundial
	WHERE Poblacion>=
	(SELECT Poblacion FROM Poblacion_Mundial WHERE Pais='Mexico');-- Esta línea devuelve el valor de "poblacion" de México

		-- La segunda consulta sirvió como referencia para la consulta original que quería