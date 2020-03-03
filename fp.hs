


triangles       = [(a,b,c) | c <-[1..10], b <-[1..10], a <-[1..10]]

rightTriangles' = [(a,b,c) | c <-[1..10], b <-[1..c], a <-[1..b], a^2 +b^2 == c^2]

---------
doubleMe x = x * 2

smallerNumber x 
   | x < 100  = x * 2 + 1
   |otherwise = x + 1

-----------------------


maximum' []    = error "no maximum from empti list"

maximum' [x]   = x

maximum'(x:xs) = max x(maximum' xs)

------------------------
--QuickSort
------------------------

quicksort []          = []

quicksort (x:xs)      = 
    let smallerSorted = quicksort [a | a <- xs, a <=x]
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted

------------------------
--Febonachi number
------------------------
feboNumber :: Int -> Int
feboNumber 0 = 0
feboNumber 1 = 1
feboNumber x = x + feboNumber(x-1)
   
filter1 test []     = []
filter1 test (l:ls) 
   | test l = l : filter1 test ls
   | otherwise = filter1 test ls




