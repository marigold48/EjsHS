
{-
Ejercicio 1.18.1. Las longitudes de los lados de un triángulo no pueden ser cualesquiera. Para
que pueda construirse el triángulo, tiene que cumplirse la propiedad triangular; es decir, longitud
de cada lado tiene que ser menor que la suma de los otros dos lados.
Definir la función triangular tal que (triangular a b c) se verifica si a, b y c complen
la propiedad triangular. Por ejemplo,
    triangular 3 4 5 == True
    triangular 30 4 5 == False
    triangular 3 40 5 == False
    triangular 3 4 50 == False
-}

triangular a b c = a < b+c && b < a+c && c < a+b

main = do
    print (triangular 3 4 5)
    print (triangular 30 4 5)

