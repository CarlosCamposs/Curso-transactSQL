-- Utilizar informaci�n del cursor
	-- Veremos un ejemplo de uso de la informaci�n de un cursor

USE Alumnos;

-- Obtenga una lista de todos los alumnos que se encuentran en la tabla Datos_Personales, incluyendo su nombre y la ciudad en la que radican.
-- En caso de que el alumno est� registrado en alguna de las actividades extra-curriculares contenidas en la tabla Activiades_Extra, entonces 
-- muestre tambi�n el nombre de dicha actividad

SELECT * FROM Datos_Personales;
SELECT * FROM Actividades_Extra;

/* ########## Todas estas l�neas que est�n encerradas deben correrse juntas para que no se tenga alg�n error ########## */

-- Creamos las variables en las que vamos a almacenar los datos
DECLARE @Nombre VARCHAR(255), @Ciudad VARCHAR(255)

--Creamos el Cursor
DECLARE Clases_Extra CURSOR FOR
	SELECT Nombre, Ciudad
	FROM Datos_Personales
		-- Dado que solo vamos a ir moviendo los registros de arriba a abajo no es necesario un CURSOR de tipo SCROLL

--Accedemos al cursor para llevar a cabo alguna acci�n sobre los registros
OPEN Clases_Extra

	FETCH NEXT FROM Clases_Extra
		INTO @Nombre,@Ciudad
			-- Con esto guardamos la informaci�n recuperada del cursor Clases_Extras en las variables Nombre y Ciudad

-- Con esto puedo ver qu� informaci�n se guard� en las variables
	SELECT @Nombre AS NOMBRE
	SELECT @Ciudad AS CIUDAD

/* ##### ################################################################################# ##### */

-- Ahora ya tenemos un valor en la variable FETCH STATUS, ya puede correr sobre toda la tabla

	WHILE @@FETCH_STATUS=0
		BEGIN
			PRINT 'Nombre del Alumno: ' + @Nombre+ ' Ciudad: ' + @Ciudad					-- Concatenamos 

			SELECT Actividad AS Actividad_ExtraCurricular
			FROM Actividades_Extra
			WHERE Nombre=@Nombre				
				-- Adem�s del print anterior estamos pidiendo que tambi�n muestra la Actividad del registro cuyo valor en la variable columna
				-- Nombre sea @Nombre

			FETCH NEXT FROM Clases_Extra
				INTO @Nombre, @Ciudad
					-- El CURSRO lo iremos recorriendo registro con registro hacia adelante, por lo que usamos FETCH NEXT y en cada iteraci�n
					-- el ciclo WHILE iremos guardando la informaci�n de cada registro (proveniente del CURSOR Clases_Extra) en las variables
					-- @Nombre y @Ciudad

		END

-- Debemos correr todo el c�digo desde el principio para que no haya problema, por lo que si ya hemos abierto el CURSOR, debemos cerrarlo
-- y volverlo a abrir

CLOSE Clases_Extra
DEALLOCATE Clases_Extra



USE Alumnos;

-- Las l�neas de c�digo que se muestran a continuaci�n deben ejecutarse todas juntas para que no exista problema y pueda funcionar el c�digo
-- Antes de ejecutar las l�neas de codigo debemos cambiar la ventana de resultados, presionando Ctrl+T para que aparezcan como una lista
-- o dando click en el primer boton de la tercera categor�a

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

/* ########################################################################################################################### */
-- Estas l�neas de abajo ya son para borrar el CURSOR

CLOSE Clases_Extra
DEALLOCATE Clases_Extra

-- Estos resultados podemos exportarlos como PDF si hacemos click derecho sobre ellos y le damos en "Print"

