
{-
Ejercicio 3.5.1. Definir por recursión la función
    menorDivisible :: Integer -> Integer -> Integer
tal que (menorDivisible a b) es el menor número divisible por los números del a al b. 
Por ejemplo,
    menorDivisible 2 5 == 60
Indicación: Usar la función lcm tal que (lcm x y) es el mínimo común múltiplo de x e y.
-}

-- import Test.QuickCheck

menorDivisible :: Integer -> Integer -> Integer
menorDivisible a b
    | a == b = a
    | otherwise = lcm a (menorDivisible (a+1) b)
    
main = do
    print (menorDivisible 2 5)
