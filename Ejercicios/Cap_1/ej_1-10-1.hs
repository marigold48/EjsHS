
{-
Ejercicio 1.10.1. Definir la función palindromo tal que (palindromo xs) se verifica si xs es
un palíndromo; es decir, es lo mismo leer xs de izquierda a derecha que de derecha a izquierda.
Por ejemplo,
	palindromo [3,2,5,2,3] == True
	palindromo [3,2,5,6,2,3] == False
-}

palindromo xs = xs == reverse xs

main = print (palindromo [3,2,5,2,3])

