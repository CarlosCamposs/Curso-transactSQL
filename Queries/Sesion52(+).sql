-- ALTER I

		-- La tabla Utiles_Escolares la diseñamos sin alguna restricción, vamos a modificarla	
		-- Antes de declarar la llave primaria debemos asegurarnos que se cumplan las condiciones para que sea llave primaria


-- Primero vamos a borrar los registros con valores nulos

DELETE FROM Utiles_Escolares WHERE Prod_Num IS NULL

SELECT * FROM Utiles_Escolares;

-- Ya no existen valores nulos en la columna Prod_Num (que es la que queremos como PRIMARY KEY) pero aún existen valores repetidos en esa misma
-- columna, por lo que nos seguirá lanzando error si queremos ponerla como PRIMARY KEY

-- Entonces, podriamos mejor borrar esos datos
DELETE FROM Utiles_Escolares WHERE Costo IS NULL;

SELECT * FROM Utiles_Escolares;


-- A partir de ahora ya podemos asignar a la columna Prod_Num como PRIMARY KEY

ALTER TABLE Utiles_Escolares
ADD PRIMARY KEY (Prod_Num);
		-- El error que lanza es debido a que la columna está marcada como nullable, es decir que permite valores NULL, y esto se debe
		-- a que en "Design" aparece marcada con una palomita

-- Se puede corregir de esta forma:

ALTER TABLE Utiles_Escolares
ALTER COLUMN Prod_Num INT NOT NULL; 
	-- Estamos declarando ahora que va a ser una columna que permita valores enteros y valores no nulos
	-- Con esto logramos quitarle la palomita en "Allow NULLS" en la pestaña de "Design"

-- Volvemos a intentar asignar la llave primaria

ALTER TABLE Utiles_Escolares
ADD PRIMARY KEY (Prod_Num);


-- Lo que resta es modificar las demás columnas a NOT NULL

ALTER TABLE Utiles_Escolares
ALTER COLUMN Producto VARCHAR(50) NOT NULL;

ALTER TABLE Utiles_Escolares
ALTER COLUMN Proveedor VARCHAR(100) NOT NULL;

ALTER TABLE Utiles_Escolares
ALTER COLUMN Costo DECIMAL(6,2) NOT NULL;

-- Y ahora ninguna columna permita valores nulos (se puede comprobrar en Design)
