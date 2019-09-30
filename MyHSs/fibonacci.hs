
-- suma2:: [Int,Int] -> Int
suma2 [x,y] = x+y;

fibonacc :: (Integral i) => i -> [i]

fibonacc 0 = []
fibonacc 1 = [1]
fibonacc 2 = [2,1]
fibonacc x = suma2 (take 2 (fibonacc (x-1))):(fibonacc (x-1))

main = do
   print (reverse (fibonacc 15))
