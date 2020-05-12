


speller :: [[Char]] -> [Char]

speller [] = ""
speller (x:xs) =  x!!0:[] ++ " for " ++ x ++", " ++speller xs
