
{-
Ejercicio 1.24.3. Definir la función conjugado tal que (conjugado z) es el conjugado del
número complejo z. Por ejemplo,
    conjugado (2,3) == (2,-3)
-}

conjugado (a,b) = (a,-b)

main = do
    print (conjugado (2,3))

