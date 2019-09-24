ordena (x:xs) =
(ordena menores) ++ [x] ++ (ordena mayores)
	where menores = [a | a <- xs, a <= x]
	      mayores = [b | b <- xs, b > x]