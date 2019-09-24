
{-
Ejercicio 1.16.1. Definir la función tresIguales tal que (tresIguales x y z) se verifica si
los elementos x, y y z son iguales. Por ejemplo,
    tresIguales 4 4 4 == True
    tresIguales 4 3 4 == False
-}

tresIguales x y z = x == y && y == z

main = do
    print (tresIguales 4 4 4)
    print (tresIguales 4 3 4)

