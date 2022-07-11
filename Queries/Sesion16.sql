-- ( SELECT Y FROM )

CREATE DATABASE Maraton;

-- Vamos a ver tres alternativas para mostrar tablas

-- Primera alternativa
SELECT *		
FROM MaratonNY;
		-- Pido que me muestre todas las columnas de la tabla MaratonNY (previamente ya cargu� la tabla en la base de datos)
		-- El s�mbolo * se lee como "all"
		-- Al lado del bot�n Execute nos muestra que database estamos usando, ahorita aparece "master", le cambiamos a "Maraton" 
		-- y se arregla el problema


-- Segunda alternativa, consiste en especificar d�nde se encuentra la tabla MaratonNy (ie en qu� base de datos) en la misma query

SELECT *
FROM maraton.dbo.MaratonNY;		
		-- Puedo poner con min�scula "Maraton" y no lanza error
		--dbo significa database owner

-- Tercera alternativa, es la forma correcta de desarrollar c�digo en SQL

USE Maraton
SELECT * FROM maraton.dbo.MaratonNY;
		-- El comando USE es el que hemos usado en los scripts anteriores


-- Voy a pedir que me muestre determinadas columnas

USE Maraton
SELECT place, gender, age
FROM MaratonNY;
