--define a function halve :: [a] ->([a],[a]) that splits an even lengthed list into two halves. For example halve [1,2,3,4,5,6] = ([1,2,3],[4,5,6])

myhalve:: [a] -> ([a],[a])

myhalve a = (take n a, drop n a)
            where n = length a `div` 2


luhn:: Int-> Int-> Int-> Int->Bool

luhn a b c d
 | a < 10 && b < 10 && c < 10 && d < 10 && ((a+b+c+d)`mod`10==0) = True
 | otherwise = False
