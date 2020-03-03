--length,tail,head,take,drop,map,filter,fibo, everySecond fiby etc, reverse

length1 :: [a] -> Int
length1 [] = 0
length1 (b:bs) = 1+ length bs





tail1 :: [a] -> [a]

tail1 (x:xs) = xs


lastItem :: [a] -> [a]
lastItem [] = error "no items"
lastItem [x] = [x]
lastItem (x:xs) = lastItem xs

myTail :: [a] -> [a]
myTail [] = error "shouldn't be empty"
myTail (x:xs) = xs

myHead :: [a] -> a
myHead []     = error "shouldn't be empty"
myHead (x:xs) = x

myTake :: [a] -> [a]
myTake [] = error "couldn't be empty"
myTake 


