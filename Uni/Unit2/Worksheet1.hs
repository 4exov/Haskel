pastTense :: String -> String
pastTense x = x ++ "ed"

-----------------------
--body mass index
-----------------------

bodyMassIndex :: Float -> Float -> String
bodyMassIndex x y = show(x / (y*y))

----------------------
-- car plant
----------------------
carPlantCost :: Int ->Int
carPlantCost n 
   | 0 <= n && n <= 500 = 5 * n + 1000
   | otherwise          = 10 * n + 450


------------------------
--Task 4. Year of birth of a person
------------------------
yearOfBirth :: Int ->String
yearOfBirth x 
  | x > 1920     = "you are " ++ show(2020 - x) ++ " years old this year"
  | otherwise    = "type your age between 1920 and today's year"

-------------------------
--Task 5. exchange rate
-------------------------
britishPoundToEuro        :: Float -> String
britishPoundToEuroRate    :: Float
britishPoundToEuroRate     = 1.14
britishPoundToEuro      x  = show(x * britishPoundToEuroRate)

-------------------------
--Task 6 (?)
-------------------------
--import Text.Printf
--euroChar = '€'
--poundChar = '£'

--prettyprintEuro :: Int -> Float
--prettyprintEuro x = printf "%.2f" x
--------------------------
--Task 7
--------------------------
rawtext :: String
rawtext = "\"This is a  \\ \\long string,\n\\ \\  spanning multiple lines\nin fact 3 lines!\" \n"




flatten [] = []
flatten (x:xs) = x ++flatten xs


fd










