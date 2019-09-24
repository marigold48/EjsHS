
{-
Ejercicio 2.13.1. El producto escalar de dos listas de enteros xs e ys de longitud n viene dado por
la suma de los productos de los elementos correspondientes. Definir por comprensión la función
    productoEscalar :: [Int] -> [Int] -> Int
tal que (productoEscalar xs ys) es el producto escalar de las listas xs e ys. Por ejemplo,
    productoEscalar [1,2,3] [4,5,6] == 32
-}

productoEscalar :: [Int] -> [Int] -> Int
productoEscalar xs ys = sum [x*y | (x,y) <- zip xs ys]

main = do
    print (productoEscalar [1,2,3] [4,5,6])
