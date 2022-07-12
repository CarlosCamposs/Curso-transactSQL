-- Guardar los resultados de las queries en un archivo csv

USE Maraton;

-- El comando IN nos permite hacer una concatenación de varios OR
SELECT * FROM MaratonNY WHERE home IN ('MEX','BRA','ARG','PER');
		-- Estoy pidiendo que me muestre aquellos donde la columna "home" sea 'MEX' OR 'BRA' OR 'ARG' OR 'PER'

-- Para guardar una query en un archivo csv:
	-- Dar click sobre la tabla
	-- File > Save results as... 

	-- Es importante dar click sobre la tabla para que se habilite la opción "Save results as..."