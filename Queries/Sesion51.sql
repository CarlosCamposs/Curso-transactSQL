-- INSERT

USE Tablas_Varias;

CREATE TABLE Utiles_Escolares(Prod_Num INT,
								Producto VARCHAR(50),
								Proveedor VARCHAR(100),
								Costo DECIMAL(6,2) ); -- 6 d�gitos en su parte entera y 2 en su parte decimal.

-- Metemos uno por uno los valores

INSERT INTO Utiles_Escolares 
VALUES(126, 'L�piz 2B', 'Papeler�a San Felipe', 3.50);
		-- No era necesario especificar, despues del nombre de la tabla, las columnas (a menos que metamos valores en distinto orden)

INSERT INTO Utiles_Escolares 
VALUES(129, 'Cuaderno cuadriculado', 'Proveedora de Oficinas', 22.30);

SELECT * FROM Utiles_Escolares;

INSERT INTO Utiles_Escolares 
VALUES(133, 'Borrador Blanco', 'Papeler�a El recreo', 5.00);

INSERT INTO Utiles_Escolares 
VALUES(119, 'Papel China', 'Proveedora de Oficinas', 0.50);

INSERT INTO Utiles_Escolares 
VALUES(115, 'Carpeta Tama�oc Carta', 'Papeler�a San Felipe', 1.50);

SELECT * FROM Utiles_Escolares;


-- Dentro de los par�ntesis puedo especificar en qu� columnas (y el orden) en el que quiero los datos

INSERT INTO Utiles_Escolares(Prod_Num,Producto,Proveedor)
	VALUES (123,'Marcador Negro', 'Papeler�a El recreo');
INSERT INTO Utiles_Escolares(Producto,Costo)
	VALUES('Pluma Azul', 8.50);

SELECT * FROM Utiles_Escolares;

-- Con la tabla creada hasta el momento nos percatamos que estamos permitiendo valores NULOS en la llave primaria o en el proveedor y costo, por
-- lo que este siguiente c�digo muestra c�mo se debe crear correctamente


CREATE TABLE Utiles_Escolares_2(Prod_Num INT PRIMARY KEY,
								Producto VARCHAR(50) NOT NULL,
								Proveedor VARCHAR(100) NOT NULL,
								Costo DECIMAL(6,2) NOT NULL ); -- 6 d�gitos en su parte entera y 2 en su parte decimal.

	-- En este caso no uso el comando UNIQUE ya que el mismo producto podr�a comprarlo con 2 proveedores distintos o con precios distintos




