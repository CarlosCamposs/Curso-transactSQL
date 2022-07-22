-- UPDATE


USE Maraton;

SELECT * INTO Maraton_Modificada
FROM MaratonNY;


ALTER TABLE Maraton_Modificada
ADD Clasificacion VARCHAR(50);
	-- Hemos creado una nueva columna


-- Asignar valores a diferentes registros que cumplan una condición en una o varias columnas determinadas

UPDATE Maraton_Modificada
SET Clasificacion ='Jovencito'
WHERE gender='Male' AND age<=40;

UPDATE Maraton_Modificada
SET Clasificacion='Jovencita'
WHERE gender='Female' AND age<=40;

UPDATE Maraton_Modificada
SET Clasificacion='Señor'
WHERE gender='Male' AND age>40;

UPDATE Maraton_Modificada
SET Clasificacion='Señora'
WHERE gender='Female' AND age>40;


-- Cambiar valores existentes

UPDATE Maraton_Modificada
SET gender='Hombre'
WHERE gender='Male';

UPDATE Maraton_Modificada
SET gender='Mujer'
WHERE gender='Female';


-- Realizar operaciones aritméticas sobre los valores de una columna

UPDATE Maraton_Modificada
SET [time]=[time]/60;
		-- Ahora ya muestra el tiempo en horas, no en minutos

SELECT * FROM Maraton_Modificada;


-- Utilizar los valores de otra tabla para poblar una columna
	-- Vamos a incluir el nombre del alumno en la tabla Actividades_Extra
USE Alumnos;

ALTER TABLE Actividades_Extra
ADD Nombre VARCHAR(255);
		-- Hemos creado esta columna en Actividades_Extra para REPOBLARLA con información de otra tabla (Datos_Personales)

UPDATE Actividades_Extra
SET Nombre= Datos_Personales.Nombre
FROM Datos_Personales
WHERE Actividades_Extra.Id_num=Datos_Personales.Id_num;






