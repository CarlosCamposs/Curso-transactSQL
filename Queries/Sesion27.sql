-- Extrayendo una lista de valores únicos con el comando DISTINCT

-- Cuando tenemos valores repetidos en una columna y estamos interesados en extraer los valores únicos podemos usar el comando DISTINCT

USE Maraton;

SELECT home FROM MaratonNY 
ORDER BY 1;-- Los estamos ordenando

-- Si queremos extraer los valores únicos, entonces:
SELECT DISTINCT home FROM MaratonNY
ORDER BY 1;