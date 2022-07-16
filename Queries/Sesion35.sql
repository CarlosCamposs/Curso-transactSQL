-- Operadores lógicos

USE Maraton;

-- Operador NOT
SELECT gender, age, home, time 
FROM MaratonNY
WHERE NOT(home='MEX');

-- Operador AND
SELECT gender, age, home, time 
FROM MaratonNY
WHERE NOT(home='MEX') AND gender='Female';

-- Operador OR
SELECT gender, age, home, time 
FROM MaratonNY
WHERE NOT(home='MEX') AND (gender='Female' OR (gender='Male' AND age BETWEEN 25 AND 30) )
ORDER BY age;



