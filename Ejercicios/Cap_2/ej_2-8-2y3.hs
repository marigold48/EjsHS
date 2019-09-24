
{-
Ejercicio 2.8.2. ¿Cuál es el límite de la sucesión
    (1 + 1 / m) ** m ?
Solución: El límite de la sucesión es el número e.

Ejercicio 2.8.3. Definir la función errorE tal que (errorE x) es el menor número de términos
de la sucesión
   (1 + 1 / m) ** m 
necesarios para obtener su límite con un error menor que x. Por
ejemplo,
errorAproxE 0.1 == 13.0
errorAproxE 0.01 == 135.0
errorAproxE 0.001 == 1359.0
Indicación: En Haskell, e se calcula como (exp 1).
-}


errorAproxE x = head [m | m <- [1..], abs((exp 1) - (1+1/m)**m) < x]

main = do
    print (errorAproxE 0.1)
    print (errorAproxE 0.01)
    print (errorAproxE 0.001)