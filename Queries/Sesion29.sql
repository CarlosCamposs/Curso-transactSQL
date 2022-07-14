
-- Vamos a ver c�mo realizar agrupaciones de datos con el comando GROUP BY 
		-- En SciData se explic� esto como si fuera una partici�n lo que se hace con el GROUP BY

USE Maraton;

SELECT gender, MIN(Time) AS Tiempo_minimo
FROM MaratonNY
GROUP BY gender; 
		-- Lo que se hace es una columna donde est�n todos los valores de "gender" y en la otra se muestra el tiempo m�nimo para cada uno de los
		-- valores de "gender"


-- Se puede no incluir la columna gender y a�n as� funciona:
SELECT MIN(Time) AS Tiempo_minimo
FROM MaratonNY
GROUP BY gender;
		-- Sin embargo no podemos conocer a qu� genero corresponde cada uno de los tiempos m�nimos que nos est� mostrando


-- Otro ejemplo con GROUPBY
SELECT gender, MAX(Time) AS Tiempo_maximo FROM MaratonNY GROUP BY gender;

-- Si quisiermaos conocer cu�ntos participantes tenemos de cada uno de los paises:
SELECT home, COUNT(Corredor) AS Cant_particip
FROM MaratonNY
GROUP BY home;

-- Suponiendo que queremos saber cuantos participantes de cada pais son mujeres y cuantos son hombres:
SELECT home, gender, COUNT(Corredor) AS Cant_Particip
FROM MaratonNY
GROUP BY home,gender;
		-- Primero se muestran el n�mero de  mujeres de cada pa�s y luego el n�mero de hombres por cada pais


-- Nos muestra el tiempo m�nimo que hicieron los corredores mexicanos separados por gender
SELECT home, gender, MIN(Time) AS Tiempo_Minimo
FROM MaratonNY
WHERE home='MEX'
GROUP BY home,gender;


-- Aqui hacemos un filtro no solo para MEX, sino tambi�n para PER
SELECT home, gender, MIN(Time) AS Tiempo_Minimo
FROM MaratonNY
WHERE home IN ('MEX', 'PER')
GROUP BY home,gender;


-- Una consulta con estad�sticos descriptivos que hemos realizado
SELECT home, COUNT(Corredor) AS Cant_Particip,
			 MIN (Time) AS Tiempo_Minimo, 
			 MAX(Time) AS Tiempo_Maximo,
			 AVG(Time) AS Tiempo_Promedio
FROM MaratonNY
GROUP BY home;


-- Si estamos interesados en conocer qu� pais tuvo el tiempo m�s corto podemos ordenarlos usando la sentencia ORDER BY
SELECT home, COUNT(Corredor) AS Cant_Particip,
			 MIN (Time) AS Tiempo_Minimo,
			 MAX(Time) AS Tiempo_Maximo,
			 AVG(Time) AS Tiempo_Promedio
FROM MaratonNY
GROUP BY home
ORDER BY Tiempo_Minimo; -- Esta linea es nueva
		-- El ORDER BY se pone al �ltimo puesto que si lo pensamos, el ordenamiento es lo �ltimo que se realizar�

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
		--HAVING se aplica sobre los RESULTADOS DE LA AGRUPACI�N QUE SE HIZO de los datos originales Y se debe colocar despu�s de la sentencia GROUP BY





