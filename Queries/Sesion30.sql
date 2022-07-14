-- Union
	-- Nos permite unir los registros resultantes de diferentes consultas llevadas a cabo.

USE Maraton;

SELECT gender,
	   age, 
	   home,
	   [time],		-- Parece no tener alg�n efecto los corchetes 
	   'Lento' AS Categoria	-- Es una columna que tiene en todas sus entradas la palabra "Lento"
FROM MaratonNY
WHERE Time>300

UNION

SELECT gender,
	   age,
	   home,
	   time,
	   'Regular' AS Categoria
FROM MaratonNY
WHERE Time BETWEEN 200 AND 300

UNION

SELECT gender,
	   age,
	   home,
	   time,
	   'Veloz' AS Categoria
FROM MaratonNY
WHERE Time <200


ORDER BY age;

-- Esta query se tiene que seleccionar completa y ejecutar
-- Notemos que despu�s de cada consulta NO se debe poner ";" puesto que lanzar� error
-- La sentencia UNION se pone entre los SELECT

-- La �nica condici�n es que todas las tablas deben tener las mismas columnas en sus resultados

