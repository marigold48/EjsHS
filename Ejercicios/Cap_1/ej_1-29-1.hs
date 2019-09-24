
{-
Ejercicio 1.29.1. Definir la función raices de forma que (raices a b c) devuelve la lista de
las raices reales de la ecuación ax2 + bx + c = 0. Por ejemplo,
    raices 1 (-2) 1 == [1.0,1.0]
    raices 1 3 2 == [-1.0,-2.0]
-}

raices_1 a b c = [(-b+d)/t,(-b-d)/t]
    where 
        d = sqrt (b^2 - 4*a*c)
        t = 2*a

raices_2 a b c
    | d >= 0 = [(-b+e)/(2*a), (-b-e)/(2*a)]
    | otherwise = error "No tiene raices reales"
    where 
        d = b^2-4*a*c
        e = sqrt d

main = do
    print (raices_1 1 (-2) 1)
    print (raices_1 1 3 2)
    print (raices_2 1 (-2) 1)
    print (raices_2 1 3 2)
