-- ALTER II

-- Vamos a comenzar agregando una columna a nuestra tabla Utiles_Escolares

ALTER TABLE Utiles_Escolares
ADD Precio DECIMAL(6,2);
		-- Esta columna permita valores nulos
		-- Aparece una nueva columna llena de valores NULL

SELECT * FROM Utiles_Escolares;

-- Existiendo valores NULL en la columna Precio no podemos hacer el cambio utilizando el comando:
		-- ALTER TABLE Utiles_Escolares
		-- ALTER COLUMN Precio DECIMAL(6,2) NOT NULL;
-- puesto que existen valores NULL

-- Podemos editar valores de una columna haciendo lo siguiente:
	-- Click derecho sobre la tabla
	-- Click en "Edit Top 200 Rows"
	-- Nos posicionamos sobre el dato que queremos y tecleamos el nuevo valor

-- Dado que ya hemos hecho la modificación anterior, entonces ya podemos usar el código arriba descrito:

ALTER TABLE Utiles_Escolares
ALTER COLUMN Precio DECIMAL(6,2) NOT NULL;

-- En conclusión, si ya existen valores nulos en la columna, no se puede usar directamente el anterior comando, tengo que eliminarlos o editarlos
-- para después correr este último código


-- Vamos a crear una nueva tabla

USE Tablas_Varias;

CREATE TABLE Proveedores( Id_Proveedor INT PRIMARY KEY,
						  Registro_Fiscal VARCHAR(50) DEFAULT ('Desconocido'),
						  Domicilio VARCHAR(100) NOT NULL);

		-- Con la sentencia DEFAULT podemos evitarnos tener valores nulos en caso de que el campo no se haya llenado


INSERT INTO Proveedores(Id_Proveedor, Domicilio)
VALUES(345,'Arco Vespacioano 89');
		-- En el campo de Registro Fiscal dejó el valor Desconocido

SELECT * FROM Proveedores;
		-- Si quisieramos que no dijera 'Desconocido' seguimos la siguiente ruta:
		-- Design > Click sobre la columna y adelante de donde diga "Deffault Value or Binding"  cambiar ese valor


-- Ahora vamos  CAMBIAR EL TIPO DE DATO de alguna de las columnas ya existentes

ALTER TABLE Utiles_Escolares
ALTER COLUMN Precio INT;
		-- Antes estaba establecida como DECIMAL(6,2)


-- Ahora vamos a QUITAR UNA O VARIAS COLUMNAS 
ALTER TABLE Utiles_Escolares
DROP COLUMN Precio;

-- Asignar un rango de valores permitidos en una columna cuando la estamos creando
ALTER TABLE Proveedores
ADD Pago_a_Proveedores INT CHECK (Pago_a_Proveedores > 10 AND Pago_a_Proveedores <10000);


		-- En la tabla utiles escolares metí una columna que no debía, es la de Pago_a_proveedores
		ALTER TABLE Utiles_Escolares
		DROP COLUMN Pago_a_Proveedores;

-- Insertamos ahora un registro que no estaría permitido
INSERT INTO Proveedores (Id_Proveedor, Domicilio, Pago_a_Proveedores)
VALUES(478, 'Avellanos 190', 180000);

-- Ahora un registro donde no tiene problema
INSERT INTO Proveedores (Id_Proveedor, Domicilio, Pago_a_Proveedores)
VALUES(478, 'Avellanos 190', 1000);

SELECT * FROM Proveedores;





