

-- CO 2107 Functional Programming 
-- Created: March 20120 University of Leicester, UK 
-------------------------------------------------------------------- 
-- Student Name 
-- Student Number 
--------------------------------------------------------------------
--
-- Please don't use the internet or your friends; 
-- instead consult the slides.
-- On the slides you find explanantion regarding 
-- Trees and Error type.
-- this should be your own work
--

module Worksheet6 where 

---------------------------------------------------------------------
----- EXERCISE 1
---------------------------------------------------------------------
data Value = Two|Three|Four|Five|Six|Seven|Eight|Nine|Ten|J|Q|K|A
             deriving (Eq, Ord, Enum)


--instance Show Value

cardValue :: Value -> String
cardValue Two   ="2"
cardValue Three = "3"
cardValue Four  = "4"
cardValue Five  = "5"
cardValue Six   = "6"
cardValue Seven = "7"
cardValue Eight = "8"
cardValue Nine  = "9"
cardValue Ten   = "10"
cardValue J     = "J"
cardValue Q     = "Q"
cardValue K     = "K"           
cardValue A     = "A"


data Suite = Hearts | Spades | Diamonds | Clubs
             deriving (Eq, Ord, Enum)
--instance Show Suite
--- Part b)
showSuite :: Suite -> String
showSuite Hearts = "H"
showSuite Spades = "S"
showSuite Diamonds = "D"
showSuite Clubs   ="C"

data Colour = Red | Black
              deriving (Eq, Ord,Enum, Show)

showColour :: Suite-> Colour
showColour Hearts    = Red
showColour Diamonds  = Red
showColour Clubs     = Black
showColour Spades    = Black

data Error a = Fail|Ok a
               deriving (Eq, Ord, Show)



type Card  = (Value, Suite)


--- Part c)

pack :: [Card]
pack = [(a,b) | a<-cardValue, b <-showSuite]


--- Part d)

--colour :: Card -> Colour


--- Part e)

--split :: Int -> [a] -> ([a],[a])


--interleave ::  [a] ->  [a] -> [a]


--- Part f)

--shuffle :: [Int] -> [a] ->  [a]


