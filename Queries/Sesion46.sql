-- Self Join
	-- Realizaremos consultas mediante la comparaci�n de dos columnas en datos que se encuentran en la misma tabla

-- Cargamos en la base de datos "Tablas_Varias" el archivo csv llamado "Empleados"
	-- 0:37 muestra el organigrama de la empresa

-- Lo que haremos es hacer un inner join pero con la misma tabla, no con dos tablas o dos bases de datos como anteriormente lo hicimos

USE Tablas_Varias;

SELECT * 
FROM Empleados emp
INNER JOIN Empleados sup
	ON emp.Supervisor=sup.Nombre -- Estoy buscando aquellos empleados que tengan un cargo de supervisor ya que me interesa conocer sus datos (telefono)
ORDER BY emp.Nombre;
	-- A la tabla Empleados le asigno dos alias, vamos a estar trabajando con la misma tabla pero le estamos asignando dos alias
	-- Hacemos uso del INNER JOIN para traer la informaci�n de los empleados que tienen un solo supervisor, no interesa traer la informaci�n
	-- de la directora general

	-- Ahora tenemos 10 columnas, 5 corresponden a la tabla de empleados y 5 que tiene la informaci�n de los supervisores de cada uno de estos
	-- En conclusi�n, para cada uno de los empleados estamos poniendo al lado la informaci�n del supervisor de ese empleado

-- Ahora ya solo nos quedaremos con la informaci�n que requerimos:

SELECT emp.Nombre, sup.Nombre AS Supervisor, sup.Telefono AS Tel_Supervisor
FROM Empleados emp
INNER JOIN Empleados sup
	ON emp.Supervisor =sup.Nombre
	ORDER BY emp.Nombre;
	-- Me muestra el nombre del empleado, su supervisor y el tel�fono del supervisor

