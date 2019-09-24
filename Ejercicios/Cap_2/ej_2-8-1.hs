
{-
Ejercicio 2.8.1. Definir la función aproxE tal que (aproXE n) es la lista cuyos elementos son
los términos de la sucesión
    (1 + 1 / m) ** m
desde 1 hasta n. Por ejemplo,
    aproxE 1 == [2.0]
    aproxE 4 == [2.0,2.25,2.37037037037037,2.44140625]
-}


aproxE n = [(1+1/m)**m | m <- [1..n]]

main = do
    print (aproxE 1)
    print (aproxE 4)