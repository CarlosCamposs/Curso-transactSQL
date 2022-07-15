-- TRIM, LTRIM, RTRIM
		-- Podemos quitar espacios en blanco que pueden contener la información que estamos analizando

-- Para quitar los espacios del lado izquierdo usamos LTRIM
SELECT LTRIM('     Fivespaces are at the beginning of this string.');

-- Para quitar los espacios del lado derecho usamos RTRIM
SELECT LTRIM('Fivespaces are at the beginning of this string.     ');

-- Si queremos quitar los espacios en blanco de ambos lados usamos TRIM
SELECT LTRIM('     Fivespaces are at the beginning of this string.     ');