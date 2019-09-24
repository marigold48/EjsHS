
{-
Ejercicio 2.14.1. Definir, por comprensión, la función
    sumaConsecutivos :: [Int] -> [Int]
tal que (sumaConsecutivos xs) es la suma de los pares de elementos consecutivos de la lista
xs. Por ejemplo,
    sumaConsecutivos [3,1,5,2] == [4,6,7]
    sumaConsecutivos [3] == []
-}

sumaConsecutivos :: [Int] -> [Int]
sumaConsecutivos xs = [x+y | (x,y) <- zip xs (tail xs)]

main = do
    print (sumaConsecutivos [3,1,5,2])
    print (sumaConsecutivos [3])
