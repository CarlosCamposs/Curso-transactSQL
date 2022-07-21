-- LEFT JOIN, RIGTH JOIN y FULL JOIN

USE Alumnos;

-- INNER JOIN
SELECT        Datos_Personales.Id_num, Datos_Personales.Nombre, Actividades_Extra.Actividad
FROM            Datos_Personales INNER JOIN
                         Actividades_Extra ON Datos_Personales.Id_num = Actividades_Extra.Id_num;

-- LEFT JOIN
	-- El campo Id.num pediremos que lo traiga de Actividades_Extra
	-- Los campos a mostrar se traran de Actividades_Extra (FROM Actividades_Extra)
	-- Cambiamos INNER JOIN por LEFT JOIn para que me deje los registros de la tabla Actividades_Extra

SELECT        Actividades_Extra.Id_num, Datos_Personales.Nombre, Actividades_Extra.Actividad
FROM            Actividades_Extra LEFT JOIN
                         Datos_Personales ON Datos_Personales.Id_num = Actividades_Extra.Id_num;

-- RIGHT JOIN
	-- Ahora nos quedaremos con los registros de Activiades Extra

SELECT        Datos_Personales.Id_num, Datos_Personales.Nombre, Actividades_Extra.Actividad
FROM            Actividades_Extra LEFT JOIN
                         Datos_Personales ON Datos_Personales.Id_num = Actividades_Extra.Id_num;

-- FULL JOIN
	-- Traemos toda la información de las dos tablas
	-- En el comando SELECT ponemos las columnas Id_num de ambas tablas, para que nos muestre a todos los alumnos

SELECT        Datos_Personales.Id_num, Actividades_Extra.Id_num AS Id_num_Act, Datos_Personales.Nombre, Actividades_Extra.Actividad
FROM            Actividades_Extra FULL JOIN
                         Datos_Personales ON Datos_Personales.Id_num = Actividades_Extra.Id_num;

