
{-
Ejercicio 2.17.1. La función
pares :: [a] -> [b] -> [(a,b)]
definida por
pares xs ys = [(x,y) | x <- xs, y <- ys]
toma como argumento dos listas y devuelve la listas de los pares con el primer elemento de la
primera lista y el segundo de la segunda. Por ejemplo,
    ghci> pares [1..3] [4..6]
    [(1,4),(1,5),(1,6),(2,4),(2,5),(2,6),(3,4),(3,5),(3,6)]
Definir, usando dos listas por comprensión con un generador cada una, la función
pares' :: [a] -> [b] -> [(a,b)]
tal que pares' sea equivalente a pares.
Indicación: Utilizar la función predefinida concat y encajar una lista por comprensión
dentro de la otra.
-}

pares :: [a] -> [b] -> [(a,b)]
pares xs ys = [(x,y) | x <- xs, y <- ys]

concat' :: [[a]] -> [a]
concat' = foldl (++) []

pares1 :: [a] -> [b] -> [(a,b)]
pares1 xs ys = concat' [[(x,y) | y <- ys] | x <- xs]

main = do
    print (pares [1,2,3] [4,5,6])
    print (pares1 [1,2,3] [4,5,6])

