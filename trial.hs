take1 :: Int -> [b] -> [b]
take1 0 (x:xs)  = []
take1 1 (x:xs)  = [x]
take1 n (x:xs)  = [x] ++ take1 (n-1)(xs)

