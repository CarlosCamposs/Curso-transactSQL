-- CONCAT_WS
	--Unir la información contenida en dos columnas pero agregando entre estas un guión o una coma

USE Alumnos;

SELECT CONCAT_WS(' - ', Direccion, Ciudad) AS Ubicacion FROM Datos_Personales;

SELECT Nombre, Direccion, Ciudad, CONCAT_WS(' - ', Direccion, Ciudad) AS Ubicacion 
FROM Datos_Personales;

-- Podemos darnos cuenta que algunos tienen en la columna Direccion un valor NULL, cuando se hace la concatenación se ignora ese campo (columna)
-- únicamente nos deja 

SELECT
	CONCAT_WS
	(	CHAR(13),			 -- Se incluye un "retorno de carro" entre cada uno de los campos, es decir, en lugar de que agregue un "-" (como en el anterior ejemplo) pediremos que agregue un "retorno de carro" o ENTER
		Nombre,				 -- El código ___ que lo contiene es el número 13, por eso ponemos CHAR(13)
		Correo,
		Direccion,
		Ciudad,
		Telefono,
		'---') Directorio	-- Esta línea de código dice que separemos a cada uno de los alumnos con ---
FROM Datos_Personales
ORDER BY Nombre;

-- Para visualizar este resultado tenemos que cambiar la vista de la ventana donde aparecen los resultados
-- Presionamos Ctrl + T y volvemos a correr la consulta
