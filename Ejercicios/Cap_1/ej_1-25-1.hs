
{-
EEjercicio 1.25.1. Definir la función intercala que reciba dos listas xs e ys de dos elementos
cada una, y devuelva una lista de cuatro elementos, construida intercalando los elementos de xs
e ys. Por ejemplo,
    intercala [1,4] [3,2] == [1,3,4,2]
-}

intercala [x1,x2] [y1,y2] = [x1,y1,x2,y2]

main = do
    print (intercala [1,4] [3,2])

