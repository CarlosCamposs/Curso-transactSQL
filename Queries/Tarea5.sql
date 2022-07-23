-- Tarea 5


/*#### Pregunta 1 ####*/

USE Tablas_Varias;

-- No correr este código, la tabla ya está creada, solo es para fines de la tarea
CREATE TABLE Utiles_Escolares_2( Prod_Num INT PRIMARY KEY
								 Producto VARCHAR(50) NOT NULL,
								 Proveedor VARCHAR(100) NOT NULL,
								 Costo DECIMAL(6,2) NOT NULL);

-- Se colocan algunos datos
INSERT INTO Utiles_Escolares_2
VALUES(126, 'Lápiz 2B', 'Papelería San Felipe', 3.50),
(129, 'Cuaderno cuadriculado', 'Proveedora de Oficinas', 22.30),
(133, 'Borrador Blanco', 'Papelería El recreo', 5.00),
(119, 'Papel China', 'Proveedora de Oficinas', 0.50),
(115, 'Carpeta Tamaño Carta', 'Papelería San Felipe', 1.50);


/*#### Pregunta 2 ####*/
SELECT * FROM Utiles_Escolares_2;

DELETE FROM Utiles_Escolares_2
WHERE Producto='Cuaderno cuadriculado';


/*#### Pregunta 3 ####*/

ALTER TABLE Utiles_Escolares_2
ADD Categoria VARCHAR(50) DEFAULT('Utiles Escolares');

SELECT * FROM Utiles_Escolares_2;


/*#### Pregunta 4 ####*/

UPDATE Utiles_Escolares_2
SET Categoria= 'Articulos Varios'
WHERE Producto='Papel China';

SELECT * FROM Utiles_Escolares_2;


/*#### Pregunta 5 ####*/

ALTER TABLE Utiles_Escolares_2
ALTER COLUMN Categoria VARCHAR(50) NOT NULL;


