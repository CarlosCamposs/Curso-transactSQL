-- CONCAT
	-- Nos permite unir la informaci�n en dos columnas, se puede hacer con el s�mbolo "+" o con el comando CONCAT

-- Usaremos la tabla clientes para unir la informaci�n del NOMBRE y APELLIDO de las personas

USE [Adventure-Carlos];


SELECT FirstName, LastName FROM Clientes;


-- Primer m�todo: usando "+"
SELECT FirstName, LastName, FirstName +' '+ LastName AS Full_Name
FROM Clientes;
		-- Es como usar los "&" en Excel


-- Segundo m�todo: CONCAT
SELECT FirstName, LastName, CONCAT(FirstName, ' ', LastName)AS Full_Name FROM Clientes;



