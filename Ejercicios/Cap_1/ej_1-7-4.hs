
{-
Ejercicio 1.7.4. Definir la función xor4 que calcule la disyunción excluyente a partir de desigualdad
(/=). Usar 1 ecuación.
-}

xor4 x y = x /= y

main = print (xor4 True True)

