
{-
Ejercicio 1.27.1. Definir la funcion numeroMayor tal que (numeroMayor x y) es el mayor
número de dos cifras que puede construirse con los dígitos x e y. Por ejemplo,
    numeroMayor 2 5 == 52
    numeroMayor 5 2 == 52
-}

numeroMayor x y = a*10 + b
    where 
        a = max x y
        b = min x y

main = do
    print (numeroMayor 2 5)
    print (numeroMayor 5 2)

