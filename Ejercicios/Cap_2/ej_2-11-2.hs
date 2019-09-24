
{-
Ejercicio 2.11.2. Definir la función
numeroDePares :: (Int,Int,Int) -> Int
tal que (numeroDePares t) es el número de elementos pares de la terna t. Por ejemplo,
48 Capítulo 2. Definiciones por comprensión
    numeroDePares (3,5,7) == 0
    numeroDePares (3,6,7) == 1
    numeroDePares (3,6,4) == 2
    numeroDePares (4,6,4) == 3
-}
numeroDePares :: (Int,Int,Int) -> Int
numeroDePares (x,y,z) = sum [1 | n <- [x,y,z], even n]

main = do
    print (numeroDePares (3,5,7))
    print (numeroDePares (3,6,7))
    print (numeroDePares (3,6,4))
    print (numeroDePares (4,6,4))
 