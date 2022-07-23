-- Cursores
	-- Son objetos que se crean en memoria para almacenar información contenida en una tabla e irla recorriendo registro por registro

-- Cuando usamos cursores hay 5 grupos de instrucciones que son necesarias:

USE Tablas_Varias;

-- Declaración
DECLARE Poblacion CURSOR FOR					--Este es el nombre del "cursor"
	SELECT Id_Pais, Pais, Categoria
	FROM Poblacion_Mundial						-- Esta es la información que estamos diciendo que guarde en dicho espacio


-- Apertura
OPEN Poblacion
	-- Para poder acceder al cursor y hacer alguna acción sobre los registros

-- Hacemos el recorrido de la tabla
FETCH NEXT FROM Poblacion
	-- En español significa "recuperar siguiente"
	-- Si corremos una sola vez, aparece el primer registro, si se vuelve a corrar ahora solo aparece el segundo registro y así sucesivamente


--Cierre 
CLOSE Poblacion
	-- Una vez que ya realizamos todo lo que necesitabamos con el "cursor", lo cerramos
	-- Si quisieramos volver a ver la información del cursor, tenemos que volver a abrirlo

--Desalojo de la memoria
DEALLOCATE Poblacion
	-- Para quitar de la memoria lo que habiamos alojado en el cursor

/* ########################## */
/* ########################## */
/* ########################## */

-- Algo que podemos hacer para recorrer la información contenida en el cursor sin necesidad de correr la linea FETCH NEXT es usar un ciclo WHILE
-- El ciclo WHILE consta de 3 palabras:
	--WHILE, BEGIN y END

USE Tablas_Varias;

-- Creamos el cursor
DECLARE Poblacion CURSOR FOR
	SELECT Id_Pais, Pais, Categoria
	FROM Poblacion_Mundial


-- Junto al WHILE ponemos una variable que nos ayuda a checar si nos encontramos en una posición que nos permita movernos dentro del cursor
-- Mientras la variable FETCH_STATUS sea igual a cero, va a realizar lo siguiente: " "

-- La variable FETCH_STATUS toma su valor con la linea que se encuentra antes del WHILE

-- La variable puede tomar valores -2,-1 o 0

	-- Si el valor es 0 significa que la instruccion FETCH se ejecutó sin ningun problema 
	--		(i.e., que existe un registro antes o después sobre el cual podemos trabajar)

	-- Si el valor es -1 significa que el FETCH tuvo problemas para ejecutarse o que ya no encontró mas allá del último registro
	
	-- Si el valor es -2 significa que no encontró la fila que le pedimos que recuperara


OPEN Poblacion
	FETCH NEXT FROM Poblacion
		
	WHILE @@FETCH_STATUS=0
	BEGIN
		FETCH NEXT FROM Poblacion
	END
		-- Durante todo el while el valor de la variable es cero, puesto que puede seguir con el registro siguiente hasta el último
		-- ahora veamos que el valor de la variable, después de haber acabado el while, es -1
SELECT @@FETCH_STATUS AS FETCH_STATUS

--Cerramos y borramos el cursor
CLOSE Poblacion
DEALLOCATE Poblacion


-- Existe otro tipo de cursor que es el SCROLL

--Creamos el cursor
DECLARE Poblacion CURSOR SCROLL FOR
	SELECT Id_Pais, Pais, Categoria	
	FROM Poblacion_Mundial

-- Con este tipo de cursor nos podemos ubicar en el primer registro con el comando FETCH FIRST, para luego desplazarnos hacia abajo con el comando
-- FETCH NEXT

OPEN Poblacion

	FETCH FIRST FROM Poblacion
		WHILE @@FETCH_STATUS=0
		BEGIN
			FETCH NEXT FROM Poblacion
		END

CLOSE Poblacion
DEALLOCATE Poblacion

-- También podemos ubicarnos en el último registro con el comando FETCH LAST, para luego desplazarnos hacia ARRIBA con el comando
-- FETCH PRIOR

DECLARE Poblacion CURSOR SCROLL FOR
	SELECT Id_Pais, Pais, Categoria	
	FROM Poblacion_Mundial


OPEN Poblacion

	FETCH LAST FROM Poblacion
		WHILE @@FETCH_STATUS=0
		BEGIN
			FETCH PRIOR FROM Poblacion
		END

CLOSE Poblacion
DEALLOCATE Poblacion


-- Si queremos que los muestre de manera secuencial, por ejemplo de 10 en 10 podemos hacer lo siguiente

DECLARE Poblacion CURSOR SCROLL FOR
	SELECT Id_Pais, Pais, Categoria	
	FROM Poblacion_Mundial


OPEN Poblacion

	FETCH ABSOLUTE 10 FROM Poblacion		-- Con esto decimos que se posicione en el registro 10
		WHILE @@FETCH_STATUS=0
		BEGIN
			FETCH RELATIVE 10 FROM Poblacion
		END

CLOSE Poblacion
DEALLOCATE Poblacion


-- Otro ejemplo:

DECLARE Poblacion CURSOR SCROLL FOR
	SELECT Id_Pais, Pais, Categoria	
	FROM Poblacion_Mundial


OPEN Poblacion

	FETCH ABSOLUTE 225 FROM Poblacion	-- Con esto decimos que se posicione en el registro 225
		WHILE @@FETCH_STATUS=0
		BEGIN
			FETCH RELATIVE -5 FROM Poblacion
		END

CLOSE Poblacion
DEALLOCATE Poblacion

