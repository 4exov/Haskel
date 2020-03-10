take1 :: Int -> [b] -> [b]
take1 0 (x:xs)  = []
take1 1 (x:xs)  = [x]
take1 n (x:xs)  = [x] ++ take1 (n-1)(xs)
makeTile a 0 = []
makeTile a 1 = []
makeTile a n  
 | n `mod` 2 == 0 = [a|c<-[1..n]] :take1 ((n-2)`div`2)(makeTile a n)
 | n `mod` 2 == 1 = [a|c<-[1..n]] :take1 ((n-3)`div`2)(makeTile a n)


myword = "\n***\n***\n"

type Tile = [String]
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
--tile2strin(z:zs) = [z  | a<-zs]
vglue:: Tile -> Tile ->Tile

--vglue a b = tile2string a ++ tile2string b
vglue (a:as) (b:bs) = [a ++ b | a<-as, b<-bs]

hglue:: Tile -> Tile ->Tile
hglue [] [] = []
--hglue (a:as) (b:bs) = "\n" ++ a ++ b ++hglue as bs
hglue (a:as) (b:bs) = ["\n" ++ a ++ b | a<-as, b<-bs]



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
--vglue a b = tile2string a ++ tile2string b
--Tile = [String] [Tile] = [[String]]
--col2tile :: [Tile]->Tile
--col2tile 0 vglue a b = []
col2tile  vglue a b = vglue a b ++ col2tile vglue a b
--row2tile :: [Tile]->Tile
--row2tile 0 hglue a b = []
row2tile  hglue a b = vglue a b ++ row2tile hglue a b

-- row2tile  will glue a row of tiles horizontally to a tile





-- Part f)

-- So, if we think of a board as a column of rows of tiles,
-- then we can convert a board into a tile using  
-- col2tile and row2tile
--Board = [[Tile]] Tile = = [String]
--board2tile :: Board ->Tile
a = [[["xx"],["v"], ["xx"]],[["v"],["xx"],["v"],["xx"]]]
--board2tile board = 
--board a b= take 4 (col2tile  vglue a b)++take 4(row2tile  hglue a b )
--edge :: Tile -> Tile

edge [] =[]
edge (a:as) = ".----." ++ a ++ edge as
