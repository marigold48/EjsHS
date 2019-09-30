dime :: (Integral a) => a -> String

dime x
   | x == 1 = "Uno"
   | x == 2 = "Dos"
   | x == 3 = "Tres"
   | x == 4 = "Four"
   | x > 4 = "Mucho"

dimes :: (Integral a) => [a] -> [String]

dimes [] = []
dimes xs = (dime (head xs): [] ++ dimes (drop 1 xs))

lista = [1..6]

main = do
   print (lista)   
   print (dimes lista)
