
{-
Ejercicio 1.7.2. Definir la función xor2 que calcule la disyunción excluyente a partir de la tabla
de verdad y patrones. Usar 2 ecuaciones, una por cada valor del primer argumento.
-}

xor2 True y = not y
xor2 False y = y

main = print (xor2 True True)

