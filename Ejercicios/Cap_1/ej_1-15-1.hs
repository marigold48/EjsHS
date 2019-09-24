
{-
Ejercicio 1.15.1. Definir la función mediano tal que (mediano x y z) es el número mediano
de los tres números x, y y z. Por ejemplo,
	mediano 3 2 5 == 3
	mediano 2 4 5 == 4
	mediano 2 6 5 == 5
	mediano 2 6 6 == 6
-}

mediano1 x y z = x + y + z- minimum [x,y,z] - maximum [x,y,z]

mediano2 x y z
    | a <= x && x <= b = x
    | a <= y && y <= b = y
    | otherwise = z
    where 
        a = minimum [x,y,z] 
        b = maximum [x,y,z]

main = do
    print (mediano1 3 2 5)
    print (mediano2 3 2 5)

