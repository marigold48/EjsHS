
{-
Ejercicio 1.28.1. Definir la función numeroDeRaices tal que (numeroDeRaices a b c) es el
número de raíces reales de la ecuación ax2 + bx + c = 0. Por ejemplo,
    numeroDeRaices 2 0 3 == 0
    numeroDeRaices 4 4 1 == 1
    numeroDeRaices 5 23 12 == 2
-}

numeroDeRaices a b c
    | d < 0 = 0
    | d == 0 = 1
    | otherwise = 2
    where d = b^2-4*a*c

main = do
    print (numeroDeRaices 2  0  3)
    print (numeroDeRaices 4  4  1)
    print (numeroDeRaices 5 23 12)
