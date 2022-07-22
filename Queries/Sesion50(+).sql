-- El CASE sirve si queremos que se ejecute cierto c�digo si una condici�n se cumple
	-- Cuando una de las condiciones se cumple, interrumpe la verificaci�n de las dem�s
	-- Si ninguna de las condiciones se cumple, entonces regresa el valor de la cl�usula ELSE
	-- Si no existe ELSE, regresa un valor nulo

USE Maraton

SELECT *, "Categoria"=
	CASE
		WHEN [time] <=200 THEN 'Veloz'
		WHEN [time] BETWEEN 200 and 300 THEN 'Regular'
		ELSE 'Lento'
	END
FROM MaratonNY;
	-- Muestra todos los campos(columnas) originales de la tabla y adem�s una nueva columna llamada Categoria, 
	-- en esta nueva columna estamos defiendo con un CASE qu� valores str va a poner

	-- Es importante verificar que en nuestra columna [time] no exista alg�n valor nulo, ya que si existiera se etiquetar�a con valor 'Lento'


USE Alumnos;

SELECT Nombre, "Comunicacion"=
	CASE
		WHEN Telefono is not null THEN CONCAT('Llamar al ', Telefono)
		WHEN Direccion is not null THEN CONCAT ('Enviar cardex a ', Direccion )
		ELSE 'El alumno no tien registrado tel�fono ni direcci�n'
	END
FROM Datos_Personales;


