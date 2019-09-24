
{-
Ejercicio 2.18.5. Definir la función vivas tal que (vivas bd a) es la lista de los nombres de
las personas de la base de datos bd que estaban vivas en el año a. Por ejemplo,
ghci> vivas personas 1600
["Cervantes","Velazquez","Quevedo","Borromini"]
-}

personas :: [(String,String,Int,Int)]
personas = [("Cervantes","Literatura",1547,1616),
    ("Velazquez","Pintura",1599,1660),
    ("Picasso","Pintura",1881,1973),
    ("Beethoven","Musica",1770,1823),
    ("Poincare","Ciencia",1854,1912),
    ("Quevedo","Literatura",1580,1654),
    ("Goya","Pintura",1746,1828),
    ("Einstein","Ciencia",1879,1955),
    ("Mozart","Musica",1756,1791),
    ("Botticelli","Pintura",1445,1510),
    ("Borromini","Arquitectura",1599,1667),
    ("Bach","Musica",1685,1750)]

vivas :: [(String,String,Int,Int)] -> Int -> [String]
vivas ps a = [x | (x,_,a1,a2) <- ps, a1 <= a, a <= a2]

main = do
    print (vivas personas 1600)
