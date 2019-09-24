
{-
Ejercicio 1.30.1. En geometría, la fórmula de Herón, descubierta por Herón de Alejandría, dice
que el área de un triángulo cuyo lados miden a, b y c es
    S = sqrt(s(s-a)(s-b)(s-c))
donde s es el semiperímetro 
    s = (a+b+c)/2
Definir la función area tal que (area a b c) es el área de un triángulo de lados a, b y c. 
Por ejemplo,
    area 3 4 5 == 6.0
-}

area a b c = sqrt (s*(s-a)*(s-b)*(s-c))
    where 
        s = (a+b+c)/2

main = do
    print (area 3 4 5)
