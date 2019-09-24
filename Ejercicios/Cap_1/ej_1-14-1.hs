
{-
Ejercicio 1.14.1. Definir la función extremos tal que (extremos n xs) es la lista formada
por los n primeros elementos de xs y los n finales elementos de xs. Por ejemplo,
	extremos 3 [2,6,7,1,2,4,5,8,9,2,3] == [2,6,7,9,2,3]
-}

extremos n xs = take n xs ++ drop (length xs - n) xs

main = print (extremos 3 [2,6,7,1,2,4,5,8,9,2,3])

