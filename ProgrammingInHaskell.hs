--Exercises 1.7

product1:: [Int] ->Int

product1 (x:xs) = x * product1 xs

qsort1 :: [Int] -> [Int]
qsort1 [] = []
qsort1 (x:xs) = qsort1 smalle  ++ [x] ++ qsort1 bige 
               where 
                     smalle = [c | c <-xs, c > x]
                     bige   = [b | b <-xs, b <=x]



--Exercises 2.7

n = a `div` length xs
    where
    a = 10
    xs = [1,2,3,4,5]

--what about to use index !! to get particular number position
last1 x = head(drop (length x -1) x)
init1 x = take (length x -1) x
