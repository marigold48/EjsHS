
{-
Ejercicio 2.9.1. Definir la función aproxLimSeno tal que (aproxLimSeno n) es la lista cuyos
elementos son los términos de la sucesión sen(1/m)/(1/m)
desde 1 hasta n. Por ejemplo,
aproxLimSeno 1 == [0.8414709848078965]
aproxLimSeno 2 == [0.8414709848078965,0.958851077208406]
-}

aproxLimSeno n = [sin(1/m)/(1/m) | m <- [1..n]]

main = do
    print (aproxLimSeno 1)
    print (aproxLimSeno 2)
