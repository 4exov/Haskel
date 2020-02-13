doubleSmallNumber x = (if x > 100 then x else x*2)+1
--tail,head, fibo,map,zip,filter,lenght,factorial

length1 :: [a] -> Int
length1 []     = 0
length1 (x:xs) = 1 + length xs

head1 :: [a] -> a
head1 []     = error "shoudn't be empty"
head1 (x:xs) = x

--remember tail returns LIST head return firt element. be careful is it insede the list or not

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

map1 :: (a -> b) ->[a] ->[b]
map1 x [] = []
map1 x (l:ls) = x l : map1 x ls
--map list comp
map2 x y = [ x a | a<-y] 

filter1 :: (a -> Bool )-> [a]->[a]
filter1 test (l:ls) 
 | test l       = l : filter1 test ls
 |otherwise     = filter1 test ls 

--filter list comp
filter2 list = [a | a<-list, a>3]

zip1 :: [a] ->[b] -> [(a,b)]
zip1 (l1:ls1) [] = []
zip1 [] (l2:ls1) = []
zip1 (l1:ls1) (l2:ls2) =(l1,l2) : zip1 ls1 ls2

factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial(n-1)

