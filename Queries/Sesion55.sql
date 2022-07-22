-- DELETE
	-- Borra definitivamente la información
	-- Para que sea más fácil de recordar se puede pensar que tiene una sintaxis similar al SELECT

USE Maraton;

DELETE FROM Maraton_Modificada
WHERE Corredor=53;


DELETE FROM Maraton_Modificada
WHERE [Tiempo en horas]<ALL ( SELECT [Tiempo en horas]
							  FROM Maraton_Modificada WHERE HOME='MEX');
		-- Recordemos que el segundo select regresa un conjunto de valores, estamos diciendo que borre todos aquellos
		-- registros cuyos tiempos sean menores a TODO ese conjunto.




