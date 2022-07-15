-- Tarea 2

/* ### Pregunta 1 ### */

USE [Adventure-Carlos];

SELECT DATEPART(YEAR, DateTime) AS Año, PurchaseOrderNumber AS Orden_de_compra
FROM PODateTime
WHERE PurchaseOrderNumber LIKE 'PO5%';


/* ### Pregunta 2 ### */

USE Maraton;

SELECT * FROM MaratonNY WHERE (gender='Male') AND (age >=60) AND  (time<200); 


/* ### Pregunta 3 ### */

SELECT * FROM MaratonNY;

SELECT home AS Pais, COUNT(*) AS Numero_de_corredoras 
FROM MaratonNY
WHERE gender='Female'
GROUP BY home 
ORDER BY Numero_de_corredoras DESC;


/* ### Pregunta 4 ### */

SELECT home AS Pais, COUNT(*) AS Numero_de_corredoras 
FROM MaratonNY
WHERE gender='Female'
GROUP BY home 
HAVING COUNT(*)>10
ORDER BY Numero_de_corredoras DESC;


/* ### Pregunta 5 ### */

SELECT home AS Pais,
	   COUNT(*) AS Numero_de_participantes,
	   MIN(age) AS Edad_minima,
	   MAX(age) AS Edad_maxima,
	   AVG(age) AS Edad_promedio
FROM MaratonNY
GROUP BY home
ORDER BY Edad_maxima DESC;


