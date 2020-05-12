--tail,head, fibo,map,zip,filter,lenght,factorial

mytail:: [a] ->[a]

mytail [] = error "cannot take tail from empty list"
mytail (x:xs) = xs

myhead:: [a]->a

myhead [] = error "cannot take head from empty list"

myhead (x:xs) = x

fibo:: Int->Int
fibo 1 = 1
fibo 2 = 1
fibo n = fibo(n-1) + fibo(n-2)
