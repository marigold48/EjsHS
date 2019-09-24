
{-
Ejercicio 3.3.1. El doble factorial de un número n se define por
    0!! = 1
    1!! = 1
    n!! = n*(n-2)* ... * 3 * 1, si n es impar
    n!! = n*(n-2)* ... * 4 * 2, si n es par
    Por ejemplo,
    8!! = 8*6*4*2 = 384
    9!! = 9*7*5*3*1 = 945
Definir, por recursión, la función
dobleFactorial :: Integer -> Integer
tal que (dobleFactorial n) es el doble factorial de n. Por ejemplo,
    dobleFactorial 8 == 384
    dobleFactorial 9 == 945
-}

-- import Test.QuickCheck

dobleFactorial :: Integer -> Integer
dobleFactorial 0 = 1
dobleFactorial 1 = 1
dobleFactorial n = n * dobleFactorial (n-2)

main = do
    print (dobleFactorial 8)
    print (dobleFactorial 9)
