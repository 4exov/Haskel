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
makeTile a 0 = []
makeTile a 1 = []
makeTile a num = [a | c<-[1..num]] : makeTile a num(??)

-- Part b)

-- The tile ["****","****"] will be printed like:
-- ****
-- ****
-- using the following function (remove comments after writing tile2string)

--printTile :: Tile -> IO()
--printTile tile = putStr(tile2string (tile))


-- here tile2 string should convert the tile ["****","****"]
-- into the string "\n****\n****\n" (remember the newline character!)
-- tile2string ["****","****"] = "\n****\n****\n"

--tile2string :: [String] -> String


-- Part c)

-- write a function vglue that glues two tiles vericall like
--           &&&      ***             &&&
-- gluing of &&& and  *** should give &&&
--                                    ***
--                                    ***
 
--vglue :: Tile -> Tile -> Tile



-- Part d)

-- next write a function hglue that glues two tiles horizontally like
--           ***      ***             ******
-- gluing of *&* and  *** should give *&****
--           ***      ***             ******

--hglue :: Tile -> Tile -> Tile

-- Part e)

-- Next we want to print chessboards
-- so we introduce a type of boards in the form 
-- of a list of a list of tiles.

type Board = [[Tile]]

--Next function: delete comments after writing board2tile
--printBoard :: Board -> IO()
--printBoard board = printTile (board2tile board )

-- to print a board we first glue all its tiles together
-- using a function board2tile :: Board -> Tile
-- we need to help functions
--
-- col2tile  will glue a column of tiles vertically to a tile

--col2tile :: [Tile]->Tile



-- row2tile  will glue a row of tiles horizontally to a tile

--row2tile :: [Tile]->Tile


-- Part f)

-- So, if we think of a board as a column of rows of tiles,
-- then we can convert a board into a tile using  
-- col2tile and row2tile

--board2tile :: Board ->Tile


-- Part g)

-- if we can now make a function that "prints" an adge around a tile,
--  we can print boards with an edge.

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


-- Part h)

-- Finally: write a function that creates an nxn chessboard of 
-- "white" tiles of the form makeTile ' ' n
-- "black" tiles of the form makeTile '*' n
-- surrounded by a nice edge and
-- such that the square at the bottom left is black
-- EG chessboard 3 should give a tile that prints like
-- .----------------.
-- |    ****    ****|
-- |    ****    ****|
-- |****    ****    |
-- |****    ****    |
-- |    ****    ****|
-- |    ****    ****|
-- |****    ****    |
-- |****    ****    |
-- .----------------.

--chessboard :: Int -> Board


-- with the following function you can print such boards:

--chess :: Int -> IO()
--chess n = printBoardWithEdge (chessboard n)



--replace below the 3x3 answer by your answer for the 8x8 board 

{-
 .----------------.
|    ****    ****|
|    ****    ****|
|****    ****    |
|****    ****    |
|    ****    ****|
|    ****    ****|
|****    ****    |
|****    ****    |
.----------------.
-}
