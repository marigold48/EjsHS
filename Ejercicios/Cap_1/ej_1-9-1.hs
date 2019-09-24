
{-
Ejercicio 1.9.1. Definir la función rango tal que (rango xs) es la lista formada por el menor
y mayor elemento de xs. Por ejemplo,
	rango [3,2,7,5] == [2,7]
Indicación: Se pueden usar minimum y maximum.
-}

rango xs = [minimum xs, maximum xs]

main = print (rango [3,2,5,7])

