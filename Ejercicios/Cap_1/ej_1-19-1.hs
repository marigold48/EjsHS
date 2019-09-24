
{-
Ejercicio 1.19.1. Definir la función divisionSegura tal que (divisionSegura x y) es x
y si
y no es cero y 9999 en caso contrario. Por ejemplo,
    divisionSegura 7 2 == 3.5
    divisionSegura 7 0 == 9999.0
-}

divisionSegura _ 0 = 9999
divisionSegura x y = x/y
main = do
    print (divisionSegura 7 2)
    print (divisionSegura 7 0)

