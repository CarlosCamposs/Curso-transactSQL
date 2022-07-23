-- Combinando cursores con procedimientos almacenados

-- Código que usamos en la Sesion60
USE Alumnos;

DECLARE @Nombre VARCHAR(255), @Ciudad VARCHAR(255)

DECLARE Clases_Extra CURSOR FOR
	SELECT Nombre, Ciudad 
	FROM Datos_Personales

OPEN Clases_Extra

	FETCH NEXT FROM Clases_Extra INTO @Nombre, @Ciudad

	WHILE @@FETCH_STATUS=0
		BEGIN
			-- Primera cosa a mostrar
			PRINT 'El nombre del alumno es:' + @Nombre+ ' Ciudad: ' + @Ciudad

			-- Segunda cosa a mostrar
			SELECT Actividad AS Actividad_ExtraCurricular
			FROM Actividades_Extra
			WHERE Nombre=@Nombre

			FETCH NEXT FROM Clases_Extra INTO @Nombre,@Ciudad
		END

CLOSE Clases_Extra
DEALLOCATE Clases_Extra

-- Lo que está dentro del WHILE lo pondremos como un procedimiento almacenado  y entonces usaremos dentro del CURSOR un stored procedure

/*########## STORED PROCEDURE ##########*/

CREATE PROCEDURE spListado_Actividades
(
@Nombre_sp VARCHAR(255),
@Ciudad_sp VARCHAR(255)
)
AS
BEGIN
	PRINT 'Nombre del Alumno: ' + @Nombre_sp +' Ciudad: '+ @Ciudad_sp

	SELECT Actividad AS Actividad_ExtraCurricular
	FROM Actividades_Extra
	WHERE Nombre=@Nombre_sp

END

/*########## CURSOR ##########*/

DECLARE @Nombre VARCHAR(255), @Ciudad VARCHAR(255)

DECLARE Clases_Extra CURSOR FOR
	SELECT Nombre, Ciudad 
	FROM Datos_Personales

OPEN Clases_Extra

	FETCH NEXT FROM Clases_Extra INTO @Nombre, @Ciudad

	WHILE @@FETCH_STATUS=0
		BEGIN
			EXECUTE spListado_Actividades @Nombre_sp=@Nombre, @Ciudad_sp=@Ciudad
			FETCH NEXT FROM Clases_Extra INTO @Nombre,@Ciudad
		END

CLOSE Clases_Extra

DEALLOCATE Clases_Extra




