
{-
Ejercicio 1.12.1. Definir la función finales tal que (finales n xs) es la lista formada por
los n finales elementos de xs. Por ejemplo,
	finales 3 [2,5,4,7,9,6] == [7,9,6]
-}

finales n xs = drop (length xs - n) xs

main = print (finales  3 [2,5,4,7,9,6])

