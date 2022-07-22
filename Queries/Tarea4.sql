-- Tarea 4

/*##### Pregunta 1 #####*/

USE Alumnos;
SELECT * FROM Datos_Personales;
SELECT* FROM Actividades_Extra;

SELECT  Datos_Personales.Nombre, Datos_Personales.Correo, Actividades_Extra.Actividad AS Clase_Extra
FROM Datos_Personales
INNER JOIN Actividades_Extra ON Datos_Personales.Id_num=Actividades_Extra.Id_num
ORDER BY Clase_Extra;


/*##### Pregunta 2 #####*/

USE Alumnos;
SELECT * FROM Datos_Personales;
SELECT* FROM Actividades_Extra;

SELECT Id_num  
FROM Actividades_Extra
WHERE Id_num != ALL ( SELECT DISTINCT Id_num 
					FROM Datos_Personales);
	-- Todos los que aparecen en Activiades_Extra parecen estar considerados en la tabla Datos_Personales


/*##### Pregunta 3 #####*/

-- Solo pide cargar bases de datos (agregué la nueva tabla "Productos)


/*##### Pregunta 4 #####*/

USE [Adventure-Carlos];

SELECT * FROM Clientes; -- CustomerID
SELECT * FROM Ordenes_de_Compra; --CustomerID y ProductID (cantidades en OrderQty)
SELECT * FROM Productos; --ProductID (descripciones en Name)

SELECT Clientes.CustomerID, Ordenes_de_Compra.OrderQty, Productos.Name
FROM Clientes
INNER JOIN Ordenes_de_Compra ON Clientes.CustomerID = Ordenes_de_Compra.CustomerID
INNER JOIN Productos ON Ordenes_de_Compra.ProductID = Productos.ProductID
ORDER BY OrderQty;


/*##### Pregunta 5 #####*/

CREATE VIEW View_Tarea AS
SELECT Clientes.CustomerID, Ordenes_de_Compra.OrderQty, Productos.Name
FROM Clientes
INNER JOIN Ordenes_de_Compra ON Clientes.CustomerID = Ordenes_de_Compra.CustomerID
INNER JOIN Productos ON Ordenes_de_Compra.ProductID = Productos.ProductID;

SELECT * INTO Tabla_Tarea4 FROM View_Tarea

SELECT [Name], COUNT(OrderQty) AS Cantidad_Vendida
FROM Tabla_Tarea4
GROUP BY [Name]

