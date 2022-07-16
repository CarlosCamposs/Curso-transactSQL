-- Operadores de comparación

-- Los operadores ANY y ALL se utilizan con WHERE y HAVING

Use Maraton;

SELECT gender, age, time 
FROM MaratonNY
WHERE time BETWEEN 100 AND 200;


SELECT gender, age, home, time 
FROM MaratonNY
WHERE home LIKE 'M%';


