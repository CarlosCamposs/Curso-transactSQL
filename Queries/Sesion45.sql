-- Join entre bases de datos
	-- Lo que hicimos anteriormente fue trabajar con tablas en la MISMA base de datos, pero podemos trabajar con tablas que estén en distintas
	-- bases de datos (en este caso sí será necesario indicar la ruta completa, i.e., incluir las letras dbo en la query)

-- La tabla de Activiadades_Extra la borramos de "Alumnos" y la pasamos a "Adventure_Carlos"


SELECT *
FROM Alumnos.dbo.Datos_Personales dp
INNER JOIN [Adventure-Carlos].dbo.Actividades_Extra ae
	ON dp.Id_num = ae.Id_num;

	-- Las letras "dp" y "ae" son alías que asignamos para mejor manejo de las bases de datos

