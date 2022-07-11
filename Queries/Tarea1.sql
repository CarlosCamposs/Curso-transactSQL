

CREATE  DATABASE Ferreteria;

USE Ferreteria

CREATE TABLE Inventario(
ID INTEGER IDENTITY(1,1),
Descripcion VARCHAR(255),
Inventario_Minimo INT,
Proveedor VARCHAR(255),
PRIMARY KEY (ID)
);

INSERT INTO Inventario VALUES ('Descripción producto 1', 10, 'Proveedor X');
INSERT INTO Inventario VALUES ('Descripción producto 2', 25, 'Proveedor Y');
INSERT INTO Inventario VALUES ('Descripción producto 3', 56, 'Proveedor Z');
INSERT INTO Inventario VALUES ('Descripción producto 4', 98, 'Proveedor W');
INSERT INTO Inventario VALUES ('Descripción producto 5', 20, 'Proveedor A');


USE Ferreteria
CREATE TABLE Proveedores(
	Proveedor VARCHAR(255),
	Telefono BIGINT,
	Tiempo_de_Entrega INT
);


INSERT INTO Proveedores VALUES ('Proveedor X',2226569809, 7 );
INSERT INTO Proveedores VALUES ('Proveedor Y',2223909867, 3 );
INSERT INTO Proveedores VALUES ('Proveedor Z',2223570807, 14 );
INSERT INTO Proveedores VALUES ('Proveedor W',2225904356, 7 );
INSERT INTO Proveedores VALUES ('Proveedor A',2222534129, 5 );

