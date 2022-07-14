-- CONCAT
	-- Nos permite unir la información en dos columnas, se puede hacer con el símbolo "+" o con el comando CONCAT

-- Usaremos la tabla clientes para unir la información del NOMBRE y APELLIDO de las personas

USE [Adventure-Carlos];


SELECT FirstName, LastName FROM Clientes;


-- Primer método: usando "+"
SELECT FirstName, LastName, FirstName +' '+ LastName AS Full_Name
FROM Clientes;
		-- Es como usar los "&" en Excel


-- Segundo método: CONCAT
SELECT FirstName, LastName, CONCAT(FirstName, ' ', LastName)AS Full_Name FROM Clientes;



