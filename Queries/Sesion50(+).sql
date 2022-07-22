-- El CASE sirve si queremos que se ejecute cierto código si una condición se cumple
	-- Cuando una de las condiciones se cumple, interrumpe la verificación de las demás
	-- Si ninguna de las condiciones se cumple, entonces regresa el valor de la cláusula ELSE
	-- Si no existe ELSE, regresa un valor nulo

USE Maraton

SELECT *, "Categoria"=
	CASE
		WHEN [time] <=200 THEN 'Veloz'
		WHEN [time] BETWEEN 200 and 300 THEN 'Regular'
		ELSE 'Lento'
	END
FROM MaratonNY;
	-- Muestra todos los campos(columnas) originales de la tabla y además una nueva columna llamada Categoria, 
	-- en esta nueva columna estamos defiendo con un CASE qué valores str va a poner

	-- Es importante verificar que en nuestra columna [time] no exista algún valor nulo, ya que si existiera se etiquetaría con valor 'Lento'


USE Alumnos;

SELECT Nombre, "Comunicacion"=
	CASE
		WHEN Telefono is not null THEN CONCAT('Llamar al ', Telefono)
		WHEN Direccion is not null THEN CONCAT ('Enviar cardex a ', Direccion )
		ELSE 'El alumno no tien registrado teléfono ni dirección'
	END
FROM Datos_Personales;


