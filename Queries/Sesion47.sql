
-- Utilizando la información cotenida en la base de datos Alumnos, encuentre la nacionalidad de
-- a) las alumnas solteras
-- b) los alumnos divorciados
-- registrados en cada una de las actividades extra-curriculares.
-- Incluya además la cantidad de alumnos que cumplen estas condiciones.


CREATE VIEW Alumnos_Edo_Civil AS
SELECT Datos_Personales.Estado_Civil, Datos_Personales.Genero, Ciudad.Pais, Actividades_Extra.Actividad
FROM Ciudad
INNER JOIN Datos_Personales ON Ciudad.Ciudad=Datos_Personales.Ciudad
INNER JOIN Actividades_Extra ON Actividades_Extra.Id_num=Datos_Personales.Id_num;
	
	-- En la creación de la vista no es posible usar ORDER BY, hasta obtener la "información completa" podremos usarlo
	-- Esta VIEW se guardó en la carpeta de "Views" dentro de la base de datos "Alumnos"

SELECT * FROM Alumnos_Edo_Civil; -- La VIEW anterior la podemos consultar como una tabla normal y sobre esta ya hacer los filtros

-- Realizamos la query que se pide al inicio

SELECT Pais, Estado_Civil, Genero, Actividad, COUNT(Actividad) AS Cant_Edo_Civil
FROM Alumnos_Edo_Civil
WHERE (Genero='F' AND Estado_Civil='Single') OR (Genero='M' AND Estado_Civil='Divorced')
GROUP BY Estado_Civil, Pais, Genero, Actividad
ORDER BY Pais, Estado_Civil, Actividad;


-- Para eliminar la VIEW
DROP VIEW Alumnos_Edo_Civil;







