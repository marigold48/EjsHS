
{-
Ejercicio 2.9.2. ¿Cuál es el límite de la sucesión sen(1/m)/(1/m)?
Solución: El límite es 1.

Ejercicio 2.9.3. Definir la función errorLimSeno tal que (errorLimSeno x) es el menor número
de términos de la sucesión 
    sen(1/m)/(1/m)
necesarios para obtener su límite con un error menor que x. Por ejemplo,
    errorLimSeno 0.1 == 2.0
    errorLimSeno 0.01 == 5.0
    errorLimSeno 0.001 == 13.0
    errorLimSeno 0.0001 == 41.0
-}

errorLimSeno x = head [m | m <- [1..], abs(1 - sin(1/m)/(1/m)) < x]

main = do
    print ( errorLimSeno 0.1)
    print ( errorLimSeno 0.01)
    print ( errorLimSeno 0.001)
    print ( errorLimSeno 0.0001)
