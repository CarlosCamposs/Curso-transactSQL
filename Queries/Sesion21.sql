-- Filtrando informaci�n num�rica

USE Maraton;

-- Muestra todos los corredores mayores de 30 a�os
SELECT * FROM MaratonNY WHERE Age>=30;

-- Con BETWEEn muestra los corredores entre 30 y 50 (considerando la igualdad)
SELECT * FROM MaratonNY WHERE Age BETWEEN 30 AND 50;

-- Combinaci�n de condiciones
SELECT * FROM MaratonNY WHERE Age>45 AND gender='Female' AND time<250;

-- Para filtros m�s avanzados es recomendable usar par�ntesis
SELECT* FROM MaratonNY WHERE ( (Age >45 AND gender='Female') OR (Age>55 AND gender='Male') ) AND time <250 ;