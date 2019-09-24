
{-
Ejercicio 2.3.1. Definir la función suma tal (suma n) es la suma de los n primeros números.
Por ejemplo,
    suma 3 == 6
-}

suma1 n = sum [1..n]

suma2 n = (1+n)*n `div` 2

main = do
    print (suma1 3)
    print (suma2 3)
