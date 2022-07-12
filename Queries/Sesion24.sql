

USE Tablas_Varias;

-- Pedimos que la query me la muestre ordenada, de forma ascendente (es el valor default de ORDER BY)
SELECT Pais, Poblacion FROM Poblacion_Mundial
	WHERE Poblacion>=(SELECT Poblacion FROM Poblacion_Mundial WHERE Pais='Mexico')
	ORDER BY Poblacion;

-- Para que muestra la query ordenada de forma descendente ponemos el comando DESC
SELECT Pais, Poblacion FROM Poblacion_Mundial
	WHERE Poblacion>=(SELECT Poblacion FROM Poblacion_Mundial WHERE Pais='Mexico')
	ORDER BY Poblacion DESC;

-- Otro ejemplo de ORDER BY

USE Maraton;

SELECT Age, Time FROM MaratonNY ORDER BY Age;
		-- Vemos que ordena las edades pero aquellas personas que tienen la misma edad, los tiempos no están ordenados

SELECT Age, Time FROM MaratonNY ORDER BY Age, Time;
		-- Le decimos que después de ordenar Age, ordene Time (cuando exista empate en Age)




