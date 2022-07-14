-- Paginación

-- Nos sirve para obtener grupos paginados, donde cada "página" tiene un cierto número de elementos. Esto es útil por ejemplo cuando
-- se tienen muchos registros en una tabla

-- Empezariamos con lo de siempre: SELECT * FROM table 

-- Luego:

-- SELECT * FROM table
-- ORDER BY [nombre-col] [ASC|DESC]
-- OFFSET x ROWS
-- FETCH NEXT y ROWS ONLY;


-- pág 1 ---> x=0; y=10;
-- pág 2 ---> x=10; y=10;
-- pág 1 ---> x=20; y=10;

-- El OFFSET es usado para indicar el número de filas (en este caso x) que deben ser omitadas cuando se lleva a cabo la consulta
-- La clausula FETCH es usada para número de filas que queremos que sean recuperadas (mostradas) después de aplicar el OFFSET