
-- Vamos a ver cómo realizar agrupaciones de datos con el comando GROUP BY 
		-- En SciData se explicó esto como si fuera una partición lo que se hace con el GROUP BY

USE Maraton;

SELECT gender, MIN(Time) AS Tiempo_minimo
FROM MaratonNY
GROUP BY gender; 
		-- Lo que se hace es una columna donde estén todos los valores de "gender" y en la otra se muestra el tiempo mínimo para cada uno de los
		-- valores de "gender"


-- Se puede no incluir la columna gender y aún así funciona:
SELECT MIN(Time) AS Tiempo_minimo
FROM MaratonNY
GROUP BY gender;
		-- Sin embargo no podemos conocer a qué genero corresponde cada uno de los tiempos mínimos que nos está mostrando


-- Otro ejemplo con GROUPBY
SELECT gender, MAX(Time) AS Tiempo_maximo FROM MaratonNY GROUP BY gender;

-- Si quisiermaos conocer cuántos participantes tenemos de cada uno de los paises:
SELECT home, COUNT(Corredor) AS Cant_particip
FROM MaratonNY
GROUP BY home;

-- Suponiendo que queremos saber cuantos participantes de cada pais son mujeres y cuantos son hombres:
SELECT home, gender, COUNT(Corredor) AS Cant_Particip
FROM MaratonNY
GROUP BY home,gender;
		-- Primero se muestran el número de  mujeres de cada país y luego el número de hombres por cada pais


-- Nos muestra el tiempo mínimo que hicieron los corredores mexicanos separados por gender
SELECT home, gender, MIN(Time) AS Tiempo_Minimo
FROM MaratonNY
WHERE home='MEX'
GROUP BY home,gender;


-- Aqui hacemos un filtro no solo para MEX, sino también para PER
SELECT home, gender, MIN(Time) AS Tiempo_Minimo
FROM MaratonNY
WHERE home IN ('MEX', 'PER')
GROUP BY home,gender;


-- Una consulta con estadísticos descriptivos que hemos realizado
SELECT home, COUNT(Corredor) AS Cant_Particip,
			 MIN (Time) AS Tiempo_Minimo, 
			 MAX(Time) AS Tiempo_Maximo,
			 AVG(Time) AS Tiempo_Promedio
FROM MaratonNY
GROUP BY home;


-- Si estamos interesados en conocer qué pais tuvo el tiempo más corto podemos ordenarlos usando la sentencia ORDER BY
SELECT home, COUNT(Corredor) AS Cant_Particip,
			 MIN (Time) AS Tiempo_Minimo,
			 MAX(Time) AS Tiempo_Maximo,
			 AVG(Time) AS Tiempo_Promedio
FROM MaratonNY
GROUP BY home
ORDER BY Tiempo_Minimo; -- Esta linea es nueva
		-- El ORDER BY se pone al último puesto que si lo pensamos, el ordenamiento es lo último que se realizará

-- Mostramos los paises cuya cantidad de participantes es mayor a 1
SELECT home, COUNT(Corredor) AS Cant_Particip,
			 MIN (Time) AS Tiempo_Minimo,
			 MAX(Time) AS Tiempo_Maximo,
			 AVG(Time) AS Tiempo_Promedio
FROM MaratonNY
GROUP BY home
HAVING COUNT(Corredor)>1
ORDER BY Tiempo_Minimo; 

-- La diferencia entre WHERE y HAVING es que
		--WHERE filtra respecto a los valores que estan en las columnas originales Y se coloca antes de la sentencia GROUP BY
		--HAVING se aplica sobre los RESULTADOS DE LA AGRUPACIÓN QUE SE HIZO de los datos originales Y se debe colocar después de la sentencia GROUP BY





