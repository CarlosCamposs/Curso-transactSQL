-- (Extrayendo componentes de una fecha)

-- Immportamos la tabla Ordenes_de_Compra 
-- Importamos la tabla PODateTime  (ambas en la base de datos Adventure-Carlos
		-- Al importarla se pide cambiar el datatype a "datetime", pero marca un error, se tiene que modificar la columna del archivo csv
		-- para que sql pueda leerla corectamente (ARREGLAR ESTE ERROR)

-- La base de datos "Adventure-Carlos" le cambiamos el gui�n medio por un gui�n bajo dado que puede dar algunos errores despu�s (hacerlo despu�s)

USE [Adventure-Carlos]

SELECT DateTime,
DATEPART(YEAR, DateTime) AS A�o,
DATEPART(MONTH, DateTime) AS Mes,
DATEPART(DAY, DateTime) AS Dia,
DATEPART(HOUR, DateTime) AS Hora,
DATEPART(MINUTE, DateTime) AS Minuto
FROM PODateTime;
-- Las l�neas anteriores no corren porque la tabla PODateTime no est� cargada






