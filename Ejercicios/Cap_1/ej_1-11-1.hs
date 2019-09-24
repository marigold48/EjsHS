
{-
Ejercicio 1.11.1. Definir la función interior tal que (interior xs) es la lista obtenida eliminando
los extremos de la lista xs. Por ejemplo,
	interior [2,5,3,7,3] == [5,3,7]
	interior [2..7] == [3,4,5,6]
-}

interior xs = tail (init xs)

main = print (interior [2,5,3,7,3])

