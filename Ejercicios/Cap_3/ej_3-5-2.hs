
{-
Ejercicio 3.5.2. Definir la constante
    euler5 :: Integer
tal que euler5 es el menor número divisible por los números del 1 al 20 
y calcular su valor.

    ghci> euler5
    232792560
-}

-- import Test.QuickCheck

menorDivisible :: Integer -> Integer -> Integer
menorDivisible a b
    | a == b = a
    | otherwise = lcm a (menorDivisible (a+1) b)

euler5 :: Integer
euler5 = menorDivisible 1 20

main = do
    print (euler5)
