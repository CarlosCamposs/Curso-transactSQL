-- Tarea 6


/* ##### Pregunta 1 ##### */

USE Alumnos;

SELECT * FROM Datos_Personales;

DECLARE @Nombre VARCHAR(50), @Genero VARCHAR(1)

DECLARE Estudiantes CURSOR FOR
	SELECT Nombre, Genero
	FROM Datos_Personales

OPEN Estudiantes
	FETCH NEXT FROM Estudiantes
	INTO @Nombre, @Genero
	WHILE @@FETCH_STATUS=0
		BEGIN
			PRINT 'El nombre es: ' + @Nombre+ ' y su género es: '+ @Genero
			FETCH NEXT FROM Estudiantes
			INTO @Nombre, @Genero
		END

CLOSE Estudiantes
DEALLOCATE Estudiantes

/* ##### Pregunta 2 ##### */

DECLARE @Nombre VARCHAR(50), @Genero VARCHAR(1)

DECLARE Estudiantes CURSOR SCROLL FOR
	SELECT Nombre, Genero
	FROM Datos_Personales

OPEN Estudiantes
	FETCH LAST FROM Estudiantes
	INTO @Nombre, @Genero
	WHILE @@FETCH_STATUS=0
		BEGIN
			PRINT 'El nombre es: ' +@Nombre+ ' y su género es: '+ @Genero
			FETCH PRIOR FROM Estudiantes
			INTO @Nombre, @Genero
		END

CLOSE Estudiantes
DEALLOCATE Estudiantes

-- Solución alternativa (Verificado que funciona igual)

DECLARE @Nombre VARCHAR(50), @Genero VARCHAR(1)

DECLARE Estudiantes CURSOR SCROLL FOR
	SELECT Nombre, Genero
	FROM Datos_Personales

OPEN Estudiantes
	FETCH ABSOLUTE 200 FROM Estudiantes
	INTO @Nombre, @Genero
	WHILE @@FETCH_STATUS=0
		BEGIN
			PRINT 'El nombre es: '+@Nombre+' y su género es: '+@Genero
			FETCH RELATIVE -1 FROM Estudiantes
			INTO @Nombre, @Genero
		END

CLOSE Estudiantes
DEALLOCATE Estudiantes



/* ##### Pregunta 3 ##### */

EXECUTE sp_rename 'Datos_Personales', 'Datos_Alumnos'

EXECUTE sp_rename 'Datos_Alumnos', 'Datos_Personales'


/* ##### Pregunta 4 ##### */

SELECT * FROM Datos_Personales;

CREATE PROCEDURE spAlumnas
(
@Genero VARCHAR(1)
)
AS
	BEGIN
		SELECT * 
		FROM Datos_Personales
		WHERE Genero=@Genero
	END

EXECUTE spAlumnas 'F';

