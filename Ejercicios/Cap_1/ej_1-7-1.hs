
{-
Ejercicio 1.7.1. Definir la función xor1 que calcule la disyunción excluyente a partir de la tabla
de verdad. Usar 4 ecuaciones, una por cada línea de la tabla.
-}

xor1 True True = False
xor1 True False = True
xor1 False True = True
xor1 False False = False

main = print (xor1 True False)

