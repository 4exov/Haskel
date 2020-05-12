


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

tomRi n
 | n > 100 = n-10
 |otherwise = tomRi(tomRi(n+11))
   
<<<<<<< HEAD
--change odd numbers but keep even numbers on their places. for example [2,3,1,4,7,12,17,28] will be [2,1,3,4,7,12,17,28]
a = [2,3,1,4,7,12,17,28] 
oddSorted a = [b | b <-a,(b`mod`2 /= 0)]
=======
filter1 test []     = []
filter1 test (l:ls) 
   | test l = l : filter1 test ls
   | otherwise = filter1 test ls

>>>>>>> 118ae43ff77075ce8ce2dbe45ea8f7d89480f4a0


--line AAAAABBBHEFRHHHEEWWWDH return A5B3HEFRH3E2W3DH


