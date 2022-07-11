-- El mundo de las expresiones regulares

-- Regex es la contracci�n de Regular expression (tambi�n se escribe como regexp)
		-- Es una secuencia de caracteres que conforman un patron de b�squeda
		-- Web: regexr.com

/* EJEMPLO 1 */
-- /  ([A-Z])\w+  /g

-- Lo que est� con el par�ntesis ([A-Z]) se llama "grupo capturador", [A-Z] significa localizar cualquier caracter que tenga letras entre A-Z
-- \w es para simbolizar cualquier palabra (word)
-- El simbolo "+" es para indicar que haya uno o mas de lo que antecede (ie, cualquier may�sucla seguido de, al menos, una letra despu�s)
-- Los s�mbolos "/" y "/g" que est�n al inicio y final respectivamente, est�n de color gris, parece que eso no forma parte de lo que queremos hacer

-- En conclusi�n, estamos buscando todas las letras que empiecen con letra may�scula, y la longitud de la palabara sea cualquiera


/* EJEMPLO 2 */
-- El compositor Handel, en algunos idiomas H�ndel o incluso tambi�n Haendel

-- La expresi�n regular que nos permita llegar al nombre del compositor ser�a la siguiente:
--/ H(a|�|ae)ndel  /g

-- En este caso, la "|" significa OR


-- Una regla que no se debe olvidar es que las expresiones regulares solo se pueden construir mediante:
		-- Uniones, concatenaciones y clausulas de ___

-- La barra vertical "|" va a separar las alternativas
-- Los "cuantificadores" son ?, +, *, .
		
		-- El ? indica que el caracter que le precede puede aparecer o no
		-- EJEMPLO: oscuro, obscuro
		-- expresi�n: / ob?scuro /g					<-- Captura los dos textos anteriores

		-- El + indica que lo que le precede debe aparecer POR LO MENOS una vez
		-- EJEMPLO: hola, hoola, hooola, hooooola
		--	expresi�n: / ho+la  /g					<-- Captura los textos anteriores

		-- El * indica que el caracter que le precede puede aparecer  NINGUNA, UNA o m�s veces
		-- es la fusi�n del ? con el +
		-- EJEMPLO: hola, hoola, hoooola, hla
		-- expresi�n: / ho*la /g					<-- Captura los textos anteriores
		-- expresi�n: / h(o*)la  /g					<-- Con esto queda m�s claro que el * solo afecta a la "o"

			



