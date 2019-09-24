
{-
Ejercicio 3.4.1. Dados dos números naturales, a y b, es posible calcular su máximo común divisor
mediante el Algoritmo de Euclides. Este algoritmo se puede resumir en la siguiente fórmula:
    mcd(a, b) =
    +-- a, si b = 0
    +-- mcd(b, a módulo b), si b > 0

Definir la función
mcd :: Integer -> Integer -> Integer
tal que (mcd a b) es el máximo común divisor de a y b calculado mediante el algoritmo de
Euclides. Por ejemplo,
    mcd 30 45 == 15
-}

-- import Test.QuickCheck

mcd :: Integer -> Integer -> Integer
mcd a 0 = a
mcd a b = mcd b (a `mod` b)

main = do
    print (mcd 30 45)
