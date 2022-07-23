-- Utilizar información del cursor
	-- Veremos un ejemplo de uso de la información de un cursor

USE Alumnos;

-- Obtenga una lista de todos los alumnos que se encuentran en la tabla Datos_Personales, incluyendo su nombre y la ciudad en la que radican.
-- En caso de que el alumno esté registrado en alguna de las actividades extra-curriculares contenidas en la tabla Activiades_Extra, entonces 
-- muestre también el nombre de dicha actividad

SELECT * FROM Datos_Personales;
SELECT * FROM Actividades_Extra;

/* ########## Todas estas líneas que estén encerradas deben correrse juntas para que no se tenga algún error ########## */

-- Creamos las variables en las que vamos a almacenar los datos
DECLARE @Nombre VARCHAR(255), @Ciudad VARCHAR(255)

--Creamos el Cursor
DECLARE Clases_Extra CURSOR FOR
	SELECT Nombre, Ciudad
	FROM Datos_Personales
		-- Dado que solo vamos a ir moviendo los registros de arriba a abajo no es necesario un CURSOR de tipo SCROLL

--Accedemos al cursor para llevar a cabo alguna acción sobre los registros
OPEN Clases_Extra

	FETCH NEXT FROM Clases_Extra
		INTO @Nombre,@Ciudad
			-- Con esto guardamos la información recuperada del cursor Clases_Extras en las variables Nombre y Ciudad

-- Con esto puedo ver qué información se guardó en las variables
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
				-- Además del print anterior estamos pidiendo que también muestra la Actividad del registro cuyo valor en la variable columna
				-- Nombre sea @Nombre

			FETCH NEXT FROM Clases_Extra
				INTO @Nombre, @Ciudad
					-- El CURSRO lo iremos recorriendo registro con registro hacia adelante, por lo que usamos FETCH NEXT y en cada iteración
					-- el ciclo WHILE iremos guardando la información de cada registro (proveniente del CURSOR Clases_Extra) en las variables
					-- @Nombre y @Ciudad

		END

-- Debemos correr todo el código desde el principio para que no haya problema, por lo que si ya hemos abierto el CURSOR, debemos cerrarlo
-- y volverlo a abrir

CLOSE Clases_Extra
DEALLOCATE Clases_Extra



USE Alumnos;

-- Las líneas de código que se muestran a continuación deben ejecutarse todas juntas para que no exista problema y pueda funcionar el código
-- Antes de ejecutar las líneas de codigo debemos cambiar la ventana de resultados, presionando Ctrl+T para que aparezcan como una lista
-- o dando click en el primer boton de la tercera categoría

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
-- Estas líneas de abajo ya son para borrar el CURSOR

CLOSE Clases_Extra
DEALLOCATE Clases_Extra

-- Estos resultados podemos exportarlos como PDF si hacemos click derecho sobre ellos y le damos en "Print"

