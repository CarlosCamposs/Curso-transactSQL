-- Filtrando la informaci�n con WHERE, LIKE IGUAL A, DIFERENTE A

USE Alumnos -- Le decimos que queremos que se fije en la base de datos "Alumnos"


/* #################### */
/* #################### */
/* #################### */
-- Comando WHERE

-- Mostramos todos los alumnos que est�n casados
SELECT * FROM Datos_Personales WHERE Estado_Civil='Married';

-- Mostramos todos los alumnos que NO est�n casados
SELECT * FROM Datos_Personales WHERE Estado_Civil!='Married';

SELECT * FROM Datos_Personales WHERE Estado_Civil<>'Married';

-- Mostramos todos los alumnos que no est�n casados OR tengan valor nulo en esa columna
SELECT * FROM Datos_Personales WHERE (Estado_Civil<>'Married') OR (Estado_Civil IS NULL);


/* #################### */
/* #################### */
/* #################### */
-- Comando LIKE
	-- Nos sirve cuando buscamos campos que contengan un valor determinado dentro de su cadena de caracteres

USE Alumnos

-- Mostramos todos los alumnos cuyo correo electr�nico sea gmail
SELECT * FROM Datos_Personales WHERE Correo LIKE '%gmail%';
		-- Para usar el LIKE empleamos los comodines que se vieron en SciData, % y _
		-- Por lo que, estoy diciendo que muestre todos aquellos registros que en alg�n punto de su Correo tenga la palabra gmail

-- Mostramos todos los alumnos cuyo nombre empiece con A
SELECT * FROM Datos_Personales WHERE Nombre like 'A%';


