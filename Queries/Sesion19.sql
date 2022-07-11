-- Comando NOT LIKE y más ejemplos de LIKE

USE Alumnos

/* ####################### */
/* ####################### */
/* ####################### */
-- Mas ejemplos de LIKE

-- Estoy interesado de que en la séptima posición exista un número 8 en el teléfono del estudiante
SELECT * FROM Datos_Personales WHERE Telefono LIKE '______8%';
		-- Recordando que los espacios cuentan con el comodin "_"

-- Muestra todos los registros cuya ciudad contengan solo seis caracteres
SELECT * FROM Ciudad WHERE Ciudad LIKE '______';


-- Muestra todos los registros cuyo nombre de ciudades empiecen con "L" y terminen con "n"
SELECT * FROM  Ciudad WHERE Ciudad LIKE 'L%n';


/* ####################### */
/* ####################### */
/* ####################### */
-- Comando NOT LIKE
		-- Es la negación del comando LIKE

USE Alumnos

-- Mostramos todas las ciudades cuyo nombre no comiencen con L
SELECT * FROM Ciudad WHERE Ciudad NOT LIKE 'L%';



