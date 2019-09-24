
{-
Ejercicio 2.18.1. Definir la función nombres tal que (nombres bd) es la lista de los nombres
de las personas de la base de datos bd. Por ejemplo,
ghci> nombres personas
["Cervantes","Velazquez","Picasso","Beethoven","Poincare",
"Quevedo","Goya","Einstein","Mozart","Botticelli","Borromini","Bach"]
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

nombres :: [(String,String,Int,Int)] -> [String]
nombres bd = [x | (x,_,_,_) <- bd]

main = do
    print (nombres personas)
    