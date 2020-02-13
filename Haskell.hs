doubleSmallNumber x = (if x > 100 then x else x*2)+1
--tail,head, fibo,map,zip,filter,lenght,factorial

length1 :: [a] -> Int
length1 []     = 0
length1 (x:xs) = 1 + length xs

head1 :: [a] -> a
head1 []     = error "shoudn't be empty"
head1 (x:xs) = x


tail1 :: [a] -> [a]

tail1 []     = error "shoudn't be emty"
tail1 (x:xs) = xs

lastTail :: [a] -> [a]
lastTail []     = error "no emty"

lastTail (x:xs) =lastTail xs

fibo1 :: Int -> Int
fibo1 1 = 1
fibo1 2 = 1
fibo1 x = fibo1(x-1) + fibo1(x-2)  

fiboSum :: Int -> Int

fiboSum x = fibo1(x+2)-1



