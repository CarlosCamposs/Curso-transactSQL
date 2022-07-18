-- Inner Join
	-- Para hacer el INNER JOIN no es necesario que el nombre de las columnas sea el mismo, 
	-- lo que debe cumplirse es que la información SÍ debe coincidir


-- Query > Design Query in Editor y seleccionamos las tablas que quisieramos hacer INNER JOIN
-- (este es un método)

SELECT        Actividades_Extra.Id_num, Datos_Personales.Nombre, Actividades_Extra.Actividad
FROM            Actividades_Extra INNER JOIN
                         Datos_Personales ON Actividades_Extra.Id_num = Datos_Personales.Id_num;


-- Si quisieramos editar esta tabla, seleccionamos todo el código y volvemos a abrir Design Query in Editor
-- Luego damos click derecho y "Agregar nueva tabla" y seleccionamos la columna Pais, obtenemos el siguiente resultado:


SELECT        Actividades_Extra.Id_num, Datos_Personales.Nombre, Actividades_Extra.Actividad, Ciudad.Pais
FROM            Actividades_Extra INNER JOIN
                         Datos_Personales ON Actividades_Extra.Id_num = Datos_Personales.Id_num INNER JOIN
                         Ciudad ON Datos_Personales.Ciudad = Ciudad.Ciudad

