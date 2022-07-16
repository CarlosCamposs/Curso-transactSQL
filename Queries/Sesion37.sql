-- Subconsultas escalonadas

SELECT AVG(time)
FROM MaratonNY; 
	-- Este es el tiempo promedio que hicieron los corredores


SELECT gender, age, time 
FROM MaratonNY
WHERE time <=
	(SELECT AVG(time)
	FROM MaratonNY);
	-- Time es una palabra reservada, por eso aparece como si fuera sintaxis de algo y no como el nombre de una columna, si queremos quitarle el
	-- color azul solo la debemos encerrar entre corchetes: [time]