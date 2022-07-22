-- DROP y TRUNCATE

	-- TRUNCATE elimina todos los registros dejando la tabla como si la acabaramos de crear

-- Con el comando DELETE vimos que podemos borrar registros que cumplan, si quisieramos, cierta condición

-- Con el comando TRUNCATE solo podemos borrar la TOTALIDAD de los registrosd e la tabla


USE Tablas_Varias;

CREATE TABLE Profesionistas(
							 ID INTEGER IDENTITY(1,1),
							 Nombre VARCHAR(40),
							 Profesion VARCHAR(40),
							 Empresa VARCHAR(50));

INSERT INTO Profesionistas
VALUES ('José Chávez', 'Ingeniero', 'HP'),
	   ('Andrés Ramirez', 'Abogado', 'Notaría 16'),
	   ('Benito Macías', 'Contador', 'Seguros Monterrey'),
	   ('Rogelio Martinez', 'Médico', 'Hospital San Javier');

DELETE Profesionistas;

SELECT * FROM Profesionistas;

-- Volvemos a meter los valores y ahora en la columna ID empezará en 5, no en número 1

-- Ahora veamos la diferencia usando el comando TRUNCATE

TRUNCATE TABLE Profesionistas;
	-- Solo nos trae los encabezados, pero ahora si metieramos los datos de nuevo, empezaría el conteo desde 1

SELECT * FROM Profesionistas;


-- El comando DROP nos sirve para eliminar una columna o una tabla
ALTER TABLE Profesionistas
DROP COLUMN Empresa;

SELECT * FROM Profesionistas;
	-- Ya no existe la columna "Empresa"

-- Si quisieramos eliminar varias columnas al mismo tiempo podemos agregar, debajo del primer DROP COLUMN, los demás DROP COLUMN que sean
-- necesarios

-- También podemos preguntar por la existencia de una columna, por ejemplo

ALTER TABLE Profesionistas
DROP COLUMN IF EXISTS Profesion;


-- Otro uso al comando DROP es para eliminar tablas

DROP TABLE Profesionistas;

DROP TABLE IF EXISTS Profesionistas;
		-- Con esto evitamos que el sistema nos lanze error en caso de no encontrar la tabla












