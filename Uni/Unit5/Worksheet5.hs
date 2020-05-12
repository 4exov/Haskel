--------------------------------------------------------------------
-- CO2108  Functional Programming                            
-- Created: Feb 2020, University of Leicester, UK                        
--------------------------------------------------------------------           
-- Student Name
-- Student Number
-- Student Login name
--------------------------------------------------------------------

--These question can and should be answered using all the functions as mentioned on the
--slides. Don't borrow library functions from the web. If in doubt ask the lecturer.
--After all the point is to teach you hwo to write this kind of code...

--Handin your solution printed out on 5/3/2020


module Worksheet5 where 
import Data.Char


----------------------------------------------------------------------
-- Exercise 1
---------------------------------------------------------------------


type Lastname = String 
type Username = String 
type Mark = Int

type Spreadsheet = [(Lastname, Username, Mark)]


--sortLastname :: Spreadsheet ->  Spreadsheet

--sortUsername :: Spreadsheet ->  Spreadsheet

--sortMark :: Spreadsheet ->  Spreadsheet

mainSort [] = []
mainSort (l:ls)     = 
  let smallerSorted = mainSort[a| a<-ls, a <= l]
      biggerSorted  = mainSort[a| a<-ls, a > l]
  in smallerSorted ++ [l] ++ biggerSorted




sortLastname :: Spreadsheet ->  Spreadsheet
sortLastname []          = []
sortLastname (l:ls)      =
 let small               = sortLastname[a |a <-ls, a <=l]
     big                 = sortLastname[a |a <-ls, a >l]
 in small ++ [l] ++ big 

sortMark :: Spreadsheet ->  Spreadsheet 
get3rd (_,_,y) = y
sortMark []          = []
sortMark (l:ls) =
   let small = sortMark[a | a<-ls, get3rd a >get3rd l]
       big = sortMark[a | a<-ls, get3rd a <=get3rd l]
   in small ++[l]++big


sortUsername :: Spreadsheet ->  Spreadsheet 
get2nd (_,y,_) = y
sortUsername []          = []
sortUsername (l:ls) =
   let small = sortUsername[a | a<-ls, get2nd a >  get2nd l]
       big   = sortUsername[a | a<-ls, get2nd a <= get2nd l]
   in small ++[l]++big

----------------------------------------------------------------------
-- Exercise 2
---------------------------------------------------------------------



-- Let a tile be a list of usually equally long strings of characters

type Tile = [String]

-- Part a)


makeTile :: Char -> Int -> [String]
take1 :: Int -> [b] -> [b]
take1 0 (x:xs)  = []
take1 1 (x:xs)  = [x]
take1 n (x:xs)  = [x] ++ take1 (n-1)(xs)
makeTile a 0 = []
makeTile a 1 = []
makeTile a n  
 | n `mod` 2 == 0 = [a|c<-[1..n]] :take1 ((n-2)`div`2)(makeTile a n)
 | n `mod` 2 == 1 = [a|c<-[1..n]] :take1 ((n-3)`div`2)(makeTile a n)



-- Part b)

-- The tile ["****","****"] will be printed like:
-- ****
-- ****
-- using the following function (remove comments after writing tile2string)

--printTile :: Tile -> IO()
--printTile tile = putStr(tile2string (tile))


-- here tile2 string should convert the tile ["****","****"]
-- into the string "\n****\n****\n" (remember the newline character!)
--tile2string ["****","****"] = "\n****\n****\n"

tile2string :: [String] -> String
--tile2string (l:ls) = l : tile2string ls
tile2string [] =""
tile2string (z:zs) = "\n"++ z ++ tile2string zs
-- Part c)

--vglue :: Tile -> Tile -> Tile

vglue:: Tile -> Tile ->Tile

--vglue a b = tile2string a ++ tile2string b
vglue (a:as) (b:bs) = [a ++ b | a<-as, b<-bs]

-- Part d)
hglue:: Tile -> Tile ->Tile
hglue [] [] = []
--hglue (a:as) (b:bs) = "\n" ++ a ++ b ++hglue as bs
hglue (a:as) (b:bs) = ["\n" ++ a ++ b | a<-as, b<-bs]

-- Part e) (??????????????????)

--col2tile :: [Tile]->Tile
--col2tile 0 vglue a b = []
col2tile  vglue a b = vglue a b ++ col2tile vglue a b
--row2tile :: [Tile]->Tile
--row2tile 0 hglue a b = []
row2tile  hglue a b = vglue a b ++ row2tile hglue a b

type Board = [[Tile]]

-- Part f)(??????????????????)



--board2tile :: Board ->Tile


-- Part g)(??????????????????)


--printBoardWithEdge :: Board -> IO()
--printBoardWithEdge board = printTile (edge (board2tile board ))



-- here the function edge :: Tile -> Tile should
-- produces a border around a rectangular tile:
-- .----.
-- |****|
-- |****|
-- .----.
-- edge (makeTile '*' 4) = [".----.","|****|","|****|",".----."]

--edge :: Tile -> Tile
--edge a b = ".----." : makeTile a b ++ head edge a b

-- Part h)(??????????????????)

