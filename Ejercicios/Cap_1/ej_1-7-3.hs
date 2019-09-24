
{-
Ejercicio 1.7.3. Definir la función xor3 que calcule la disyunción excluyente a partir de la
disyunción (||), conjunción (&&) y negación (not). Usar 1 ecuación.
-}

xor3 x y = (x || y) && not (x && y)

main = print (xor3 True True)

