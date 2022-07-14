-- Paginaci�n

-- Nos sirve para obtener grupos paginados, donde cada "p�gina" tiene un cierto n�mero de elementos. Esto es �til por ejemplo cuando
-- se tienen muchos registros en una tabla

-- Empezariamos con lo de siempre: SELECT * FROM table 

-- Luego:

-- SELECT * FROM table
-- ORDER BY [nombre-col] [ASC|DESC]
-- OFFSET x ROWS
-- FETCH NEXT y ROWS ONLY;


-- p�g 1 ---> x=0; y=10;
-- p�g 2 ---> x=10; y=10;
-- p�g 1 ---> x=20; y=10;

-- El OFFSET es usado para indicar el n�mero de filas (en este caso x) que deben ser omitadas cuando se lleva a cabo la consulta
-- La clausula FETCH es usada para n�mero de filas que queremos que sean recuperadas (mostradas) despu�s de aplicar el OFFSET