-- Guardar un valor de un registro en una variable
/* ##### Se debe seleccionar TODO el codigo para correrlo #####*/


-- Queremos saber en qué pais vive un determiando alumno, necesitamos una variable para el ID del alumno y otra para el pais

USE Alumnos;

-- El pais se encuentra en la tabla Ciudad (tiene dos campos, "Ciudad" y "Pais")
-- El ID del alumno se encuentra en la tabla Datos_Personales (la cual también tiene el campo "Ciudad")

-- entonces, primero debemos saber en qué ciudad se encuentra el alumno para contestar la pregunta de en qué pais vive

-- Necesitamos declarar 3 variables, el ID, pais, ciudad

DECLARE @Id_num int, @Pais VARCHAR(20), @Ciudad VARCHAR(20);
	-- El nombre se le asigna después del arroba y se le asigna el tipo de dato

-- Para asignar un valor a una variable usamos la sentencia SET
SET @Id_num=5 -- Este es el alumno en el que estamos interesados


SET @Ciudad=(SELECT Ciudad 
			 FROM Datos_Personales
			 WHERE Id_num=@Id_num)
	-- Con este comando podemos conocer la ciudad, y ahora con este dato podremos conocer el pais

SET @Pais=(SELECT Pais 
		   FROM Ciudad
		   WHERE Ciudad=@Ciudad)

-- Vamos a mostrar el valor de las variables
SELECT @Id_num AS Numero_de_Alumno
SELECT @Ciudad AS Ciudad
SELECT @Pais AS Pais


