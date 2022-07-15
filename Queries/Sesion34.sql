-- CAST y CONVERT
		-- Útiles cuando queremos hacer una conversión de datos (de un tipo a otro)
		-- CONVERT es compatible en algunos manejadores de bases de datos, mientras que CAST es universal

SELECT '09/02/1970'; 
	-- El problema que tenemos es que tenemos una fecha pero está como string

SELECT CAST('09/02/1970' AS DATETIME);
	-- Me lo devuelve en formato fecha (con hh-mm-ss)

SELECT CAST(CAST('12/16/2020' AS DATETIME)- CAST('02/09/1970' AS DATETIME) AS INT);
	-- Al hacer la diferencia entre CAST obtenemos la diferencia de días que existe pero el output está en formato fecha, decimos entonces
	-- que queremos que la diference la regrese como INT



USE [Adventure-Carlos];

SELECT CAST(DateTime AS CHAR(12)) -- Aqui le pido que me convierta la variable DateTime en una variable de 12 caracteres
FROM PODateTime;
	-- Error con la base de datos

-- Vamos a hacer la misma conversión pero con CONVERT
SELECT CONVERT(VARCHAR, DateTime,100)
FROM PODateTime;
		-- Tipo de variable que queremos en el output, variable que queremos convertir, formato que queremos que utilice



