-- Creando una tabla a partir de otra tabla (o view) con la sentencia INTO

USE Maraton;

SELECT gender, age, [time] INTO Maraton_Nueva
FROM MaratonNY;
	-- Creamos una nueva tabla llamada Maraton_Nueva

SELECT * FROM Maraton_Nueva;

-- Un uso mas interesante es almacenar en una tabla los datos que contiene una VIEW (para que no se pierda la informacion que estamos trabajando
-- al cerrar la sesión)

CREATE VIEW Mexicanos AS
SELECT  Corredor, place, gender, age [time]
FROM MaratonNY
WHERE home='Mex';
	-- Creamos la vista

SELECT * FROM Mexicanos;

-- Ahora que tenemos la información en una VIEW, guardaremos la info en una tabla llamada Tabla_Mexicanos

SELECT * INTO Tabla_Mexicanos
FROM Mexicanos;

SELECT * FROM Tabla_Mexicanos;
		-- Esta tabla ya aparece en la base de datos Maraton

-- Ahora vamos a obtener una tabla que contenga los datos de un campo con valores que no se repitan

USE Alumnos;

SELECT * FROM Actividades_Extra;

SELECT DISTINCT Actividad INTO Lista_de_Actividades
FROM Actividades_Extra
		-- La sentencia DISTINCT es para conseguir valores únicos

--Resultado
SELECT * FROM Lista_de_Actividades;






