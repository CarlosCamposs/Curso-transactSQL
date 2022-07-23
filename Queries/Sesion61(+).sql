-- Procedimientos almacenados
		-- Es un conjunto de sentencias de SQL (cuyo equivalente en otros lenguajes de programaci�n son las subrutinas o m�todos)
		-- Son bloques de c�digo FRECUENTEMENTE REUTILIZADOS y son creados para evitar generar el c�digo en repetidas ocasiones

		-- Se almacenan en la carpeta Programmability > Stored procedures (de la base de datos) 

		-- Existen algunos stored procedures, se pueden encontrar buscando: "Database Engine Stored Procedures (Transact-SQL)

-- Algunos ejemplos

EXECUTE sp_help ;
	-- Se puede correr si nada mas se pone EXE
	-- Nos da una lista de los objetos que contiene la base de datos en la que nos encontramos ubicados
	-- Se puede poner "par�metros"

EXECUTE sp_help 'Datos_Personales';
	-- Muestra informaci�n de la tabla Datos_Personales


EXECUTE sp_rename 'Region','Regiones'
	-- Sirve para renombrar objetos contenidos en una base de datos
	-- Estoy pidiendo que cambie el nombre de la tabla "Region" a "Regiones"
	-- Este procedimiento puede hacer que algunos scripts dejen de funcionar, por lo que la dejaremos igual que antes
		EXECUTE sp_rename 'Regiones', 'Region'


-- Vamos a crear nuestros propios stored procedures

CREATE PROCEDURE spAlumnos_Clase_Extra
(
@Actividad VARCHAR(50)
)
AS
BEGIN
	SELECT * 
	FROM Actividades_Extra 
	WHERE Actividad=@Actividad
END

-- Se puede ejecutar un stored procedure con la siguiente linea (o tambien busc�ndolo dentro de la carpeta Programmability y dandole clikc derecho)
EXECUTE spAlumnos_Clase_Extra 'Canto';

EXECUTE spAlumnos_Clase_Extra 'Robotica';

-- Se puede modificar el "procedimiento almacenado" usando el comando ALTER PROCEDURE

ALTER PROCEDURE spAlumnos_Clase_Extra
(
@Actividad VARCHAR(50)
)
AS
BEGIN
	SELECT *
	FROM Actividades_Extra
	WHERE Actividad=@Actividad
	ORDER BY Nombre
END

EXECUTE spAlumnos_Clase_Extra 'Robotica'

-- Si ya no vamos a usar el procedimiento lo podemos borrar con el comando DROP PROCEDURE

DROP PROCEDURE spAlumnos_Clase_Extra

/* ############################################################################################################################## */
-- Vamos a crear un stored procedure con dos par�metros

USE Tablas_Varias;


CREATE PROCEDURE spCambio_Costo
(
@Producto VARCHAR(50), @Costo DECIMAL(6,2)
)
AS
BEGIN
	UPDATE Utiles_Escolares
	SET Costo=@Costo
	WHERE Producto=@Producto
END

-- Veamos de nuevo la tabla para decidir cual registro quiero cambiar
SELECT * FROM Utiles_Escolares;


-- Se cambia el valor
EXECUTE spCambio_Costo 'L�piz 2B',3.50;
SELECT * FROM Utiles_Escolares;


-- Vemos nuevamente la tabla
SELECT * FROM Utiles_Escolares;


-- Le regresamos el costo de 2.40 al objeto Lap�z 2B
EXECUTE spCambio_Costo @Costo=2.40, @Producto='L�piz 2B'
		-- Hemos puesto los par�metros en otro orden pero hemos especificado cu�l variable tiene edicho valor



