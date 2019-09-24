
{-
Ejercicio 1.17.1. Definir la función cuatroIguales tal que (cuatroIguales x y z u) se
verifica si los elementos x, y, z y u son iguales. Por ejemplo,
    cuatroIguales 5 5 5 5 == True
    cuatroIguales 5 5 4 5 == False
Indicación: Usar la función tresIguales.
-}

tresIguales x y z = x == y && y == z

cuatroIguales x y z u = x == y && tresIguales y z u

main = do
    print (cuatroIguales 5 5 5 5)
    print (cuatroIguales 5 5 4 5)

