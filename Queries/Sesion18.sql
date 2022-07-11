-- Filtrando la información con WHERE, LIKE IGUAL A, DIFERENTE A

USE Alumnos -- Le decimos que queremos que se fije en la base de datos "Alumnos"


/* #################### */
/* #################### */
/* #################### */
-- Comando WHERE

-- Mostramos todos los alumnos que estén casados
SELECT * FROM Datos_Personales WHERE Estado_Civil='Married';

-- Mostramos todos los alumnos que NO estén casados
SELECT * FROM Datos_Personales WHERE Estado_Civil!='Married';

SELECT * FROM Datos_Personales WHERE Estado_Civil<>'Married';

-- Mostramos todos los alumnos que no estén casados OR tengan valor nulo en esa columna
SELECT * FROM Datos_Personales WHERE (Estado_Civil<>'Married') OR (Estado_Civil IS NULL);


/* #################### */
/* #################### */
/* #################### */
-- Comando LIKE
	-- Nos sirve cuando buscamos campos que contengan un valor determinado dentro de su cadena de caracteres

USE Alumnos

-- Mostramos todos los alumnos cuyo correo electrónico sea gmail
SELECT * FROM Datos_Personales WHERE Correo LIKE '%gmail%';
		-- Para usar el LIKE empleamos los comodines que se vieron en SciData, % y _
		-- Por lo que, estoy diciendo que muestre todos aquellos registros que en algún punto de su Correo tenga la palabra gmail

-- Mostramos todos los alumnos cuyo nombre empiece con A
SELECT * FROM Datos_Personales WHERE Nombre like 'A%';


