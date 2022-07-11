

--Vamos a importar registros de un archivo csv a una tabla

USE [Adventure-Carlos] -- Con esto indicamos que vamos a usar la base de datos que se llama Adventure Carlos

CREATE TABLE Exportaciones( -- Este es el nombre de la tabla que estamos creando
	Material VARCHAR(255),
	Sector VARCHAR(255),
	Monto_Exportacion BIGINT, -- Aqui declaramos que esta columna acepte los valores numéricos que tiene BIGINT (ver el acordeón de Excel)
	Pais VARCHAR(255)
	);

-- Para importar los registros usamos el comando BULK INSERT

BULK INSERT Exportaciones -- Aqui le digo el nombre de la tabla que definí anteriormente 
FROM 'C:\Users\Carlos Campos\Desktop\SQL\Exportaciones+Mexico+varios+paises+2018.csv'
WITH( 
FIELDTERMINATOR=',',	--- Esto es el delimitador que tiene el archivo (es una coma)
ROWTERMINATOR ='\n', -- Esto lo explica SciData, es con lo que termina un renglón
FIRSTROW=2 --Con esto le digo que los datos empiezan desde la fila 2, puesto que en la fila 1 tenemos los encabezados
)