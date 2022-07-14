
USE Maraton;

SELECT MIN(Time) -- Existe una columna llamada Time en la tabla MaratonNY, estamos pidiendo que nos muestre el valor m�nimo de esa columna
FROM MaratonNY;

SELECT MAX(Time) -- M�ximo
FROM MaratonNY;

SELECT SUM(Time) -- Suma
FROM MaratonNY;

SELECT AVG(Time) --Average
FROM MaratonNY;

-- Si quisieramos redondear alguno de los valores anteriores podemos usar el comando ROUND e indicando la cantidad de decimales que queremos
-- que nos despligue

SELECT ROUND(AVG(Time),2)
FROM MaratonNY;

-- Siguiendo con la idea de traer valores �nicos en una columna, una vez que tenemos identificados los valores �nicos, podemos pedir que los 
-- cuente con el comando COUNT

SELECT COUNT(DISTINCT(home)) FROM MaratonNY;




