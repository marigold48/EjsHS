
{-
Ejercicio 1.13.1. Definir la función segmento tal que (segmento m n xs) es la lista de los
elementos de xs comprendidos entre las posiciones m y n. Por ejemplo,
	segmento 3 4 [3,4,1,2,7,9,0] == [1,2]
	segmento 3 5 [3,4,1,2,7,9,0] == [1,2,7]
	segmento 5 3 [3,4,1,2,7,9,0] == []
-}

segmento m n xs = drop (m-1) (take n xs)

main = print (segmento  3 5 [3,4,1,2,7,9,0])

