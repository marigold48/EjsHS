
{-
Ejercicio 2.10.2. Definir la función errorPi tal que (errorPi x) es el menor número de
términos de la serie
    4*(1-1/3+1/5-1/7+...+(-1/n)/(2n + 1))
necesarios para obtener p con un error menor que x. Por ejemplo,
    errorPi 0.1 == 9.0
    errorPi 0.01 == 99.0
    errorPi 0.001 == 999.0
-}
calculaPi n = 4 * sum [(-1)**x/(2*x+1) | x <- [0..n]]

errorPi x = head [n | n <- [1..], abs (pi - (calculaPi n)) < x] 

main = do
    print (errorPi 0.1)
    print (errorPi 0.01)
    print (errorPi 0.001)
 