-- Subconsultas de Lista

SELECT gender, age, home, time 
FROM MaratonNY
WHERE time < ALL
	(SELECT time
		FROM MaratonNY WHERE home='MEX');
	-- En el segundo SELECT estamos obteniendo una lista de valores (toda una columna, NO un valor �nico)
	-- por lo que cuando ponemos <ALL(...)
	-- estamos pidiendo que regrese todos los registros cuyo "time" sea menor a todos los valores que est�n en esa lista de valores
	-- (i.e, se saca el m�nimo de la lista de valores y el primer SELECT devuelve todos los valores menores a ese m�nimo calculado)


SELECT gender, age, home, time 
FROM MaratonNY
WHERE time < ANY
	(SELECT time
		FROM MaratonNY WHERE home='MEX');
	-- Con el mando ANY le pedimos que nos regrese aquellos registros cuyo "time" sea menor a cualquiera de los valores de esa lista
	-- por lo que, la query completa nos devuelve los registros cuyo "time" sea menor al M�XIMO de la lista de valores