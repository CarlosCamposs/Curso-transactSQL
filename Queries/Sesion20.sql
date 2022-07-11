-- El mundo de las expresiones regulares

-- Regex es la contracción de Regular expression (también se escribe como regexp)
		-- Es una secuencia de caracteres que conforman un patron de búsqueda
		-- Web: regexr.com

/* EJEMPLO 1 */
-- /  ([A-Z])\w+  /g

-- Lo que está con el paréntesis ([A-Z]) se llama "grupo capturador", [A-Z] significa localizar cualquier caracter que tenga letras entre A-Z
-- \w es para simbolizar cualquier palabra (word)
-- El simbolo "+" es para indicar que haya uno o mas de lo que antecede (ie, cualquier mayúsucla seguido de, al menos, una letra después)
-- Los símbolos "/" y "/g" que están al inicio y final respectivamente, están de color gris, parece que eso no forma parte de lo que queremos hacer

-- En conclusión, estamos buscando todas las letras que empiecen con letra mayúscula, y la longitud de la palabara sea cualquiera


/* EJEMPLO 2 */
-- El compositor Handel, en algunos idiomas Händel o incluso también Haendel

-- La expresión regular que nos permita llegar al nombre del compositor sería la siguiente:
--/ H(a|ä|ae)ndel  /g

-- En este caso, la "|" significa OR


-- Una regla que no se debe olvidar es que las expresiones regulares solo se pueden construir mediante:
		-- Uniones, concatenaciones y clausulas de ___

-- La barra vertical "|" va a separar las alternativas
-- Los "cuantificadores" son ?, +, *, .
		
		-- El ? indica que el caracter que le precede puede aparecer o no
		-- EJEMPLO: oscuro, obscuro
		-- expresión: / ob?scuro /g					<-- Captura los dos textos anteriores

		-- El + indica que lo que le precede debe aparecer POR LO MENOS una vez
		-- EJEMPLO: hola, hoola, hooola, hooooola
		--	expresión: / ho+la  /g					<-- Captura los textos anteriores

		-- El * indica que el caracter que le precede puede aparecer  NINGUNA, UNA o más veces
		-- es la fusión del ? con el +
		-- EJEMPLO: hola, hoola, hoooola, hla
		-- expresión: / ho*la /g					<-- Captura los textos anteriores
		-- expresión: / h(o*)la  /g					<-- Con esto queda más claro que el * solo afecta a la "o"

			



