
{-
Ejercicio 1.23.1. Definir la función cuadrante tal que (cuadrante p) es es cuadrante del
punto p (se supone que p no está sobre los ejes). Por ejemplo,
    cuadrante (3,5) == 1
    cuadrante (-3,5) == 2
    cuadrante (-3,-5) == 3
    cuadrante (3,-5) == 4
-}

cuadrante (x,y)
    | x > 0 && y > 0 = 1
    | x < 0 && y > 0 = 2
    | x < 0 && y < 0 = 3
    | x > 0 && y < 0 = 4

main = do
    print (cuadrante ( 3, 5))
    print (cuadrante (-3, 5))
    print (cuadrante (-3,-5))
    print (cuadrante ( 3,-5))

