-- Eliminando registros duplicados

USE Tablas_Varias;

CREATE TABLE Tabla_con_Duplicados( Nombre VARCHAR(40),
								   Profesion VARCHAR(40),
								   Empresa VARCHAR(50));

INSERT INTO Tabla_con_Duplicados
VALUES ('José Chávez', 'Ingeniero', 'HP'),
	   ('Andrés Ramírez', 'Abogado', 'Notaría 16'),
	   ('Benito Macías', 'Contador', 'Seguros Monterrey'),
	   ('Rogelio Martinez', 'Médico', 'Hospital San Javier'),
	   ('Benito Macías', 'Contador', 'Seguros Monterrey'),
	   ('José Chávez', 'Ingeniero', 'HP');


SELECT * FROM Tabla_con_Duplicados;

-- Le pedimos al sistema que me muestre cuantas veces aparece cada una de las personas dentro de Tabla_con_Duplicados

SELECT *, COUNT(*) OVER (PARTITION BY Nombre, Profesion, Empresa) as Conteo
FROM Tabla_con_Duplicados;

	-- Antes de hacer el conteo, es necesario llevar a cabo la partición de la tabla de manera que cada una de estas particiones contengan un 
	-- número de registros cuya información en las columnas "Nombre", "Profesion", "Empresa" sea la misma, por lo que usaremos la sentencia
	-- OVER combinada con PARTITION  BY

-- Con la función ROW_NUMBER(), en lugar de contar los registros, los va a enumerar

SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesion, Empresa ORDER BY Nombre) as Enumeracion
FROM Tabla_con_Duplicados;


-- Vamos a crear una nueva tabla derivada llamada Enumeracion_Duplicados

SELECT *
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesion, Empresa ORDER BY Nombre) as Enumeracion
	  FROM Tabla_con_Duplicados) AS Enumeracion_Duplicados -- Esta es una tabla derivada
WHERE Enumeracion_Duplicados.Enumeracion>1;

-- Si cambiamos el SELECT por DELETE, lo que estamos haciendo es borrar los valores duplicados

DELETE Enumeracion_Duplicados
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesion, Empresa ORDER BY Nombre) as Enumeracion
	  FROM Tabla_con_Duplicados) AS Enumeracion_Duplicados -- Esta es una tabla derivada
WHERE Enumeracion_Duplicados.Enumeracion>1;

-- Mostramos el resultado

SELECT * FROM Tabla_con_Duplicados;


