-- Tarea 3

USE Maraton;

SELECT * FROM MaratonNY

/* #### Pregunta 1 #### */
USE Maraton;

SELECT gender, age, home, time
FROM MaratonNY
WHERE gender='Female' AND home='NY'
ORDER BY time ASC;

/* #### Pregunta 2 #### */

SELECT gender, age, home
FROM MaratonNY
WHERE (gender='Male' AND age<30) OR (gender='Female' AND age BETWEEN 30 AND 40)
ORDER BY age;

/* #### Pregunta 3 #### */

SELECT gender, age, time 
FROM MaratonNY
WHERE age>=25 AND time < ALL (SELECT MIN(time)
								FROM  MaratonNY
								WHERE age<25);

/* #### Pregunta 4 #### */

SELECT * 
FROM MaratonNY
WHERE gender='Male' AND age<40 AND time > ALL(SELECT time 
									FROM MaratonNY 
									WHERE gender='Female' AND age<40)
ORDER BY age DESC;


