
{-
Ejercicio 2.10.1. Definir la función calculaPi tal que (calculaPi n) es la aproximación del
número p calculada mediante la expresión
    4*(1-1/3+1/5-1/7+...+(-1/n)/(2n + 1))
Por ejemplo,
    calculaPi 3 == 2.8952380952380956
    calculaPi 300 == 3.1449149035588526
-}

calculaPi n = 4 * sum [(-1)**x/(2*x+1) | x <- [0..n]]

main = do
    print ( calculaPi 3 )
    print ( calculaPi 300 )
 