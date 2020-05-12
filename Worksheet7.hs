
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

module Worksheet7 where 

---------------------------------------------------------------------
----- EXERCISE 1
---------------------------------------------------------------------


type NumberOfCars = Int
type DailyCost  = Float

--cost :: NumberOfCars  -> Err (DailyCost)


---------------------------------------------------------------------
----- EXERCISE 2
---------------------------------------------------------------------

data Tree a = Leaf a | Branch (Tree a) (Tree a)
               deriving Show

size :: Tree a -> Int
size (Leaf a)  = 1
size (Branch t1 t2) = size t1 + size t2


nodes :: Tree a -> Int
nodes (Leaf a )= 0
nodes (Branch  t1 t2) = (1 +nodes t1) + (1 + nodes t2)


depth :: Tree a -> Int
depth (Leaf a )= 0
depth (Branch  t1 t2) = 1 + max(depth t1) (depth t2)


--maptree :: (a->b) -> Tree a -> Tree b

collapse :: Tree a -> [a]
collapse (Leaf a) = [a]
collapse (Branch  t1 t2) =collapse t1 ++ collapse t2 


---------------------------------------------------------------------
----- EXERCISE 3
---------------------------------------------------------------------

data Btree a = ND | Data a | Branch1 (Btree a) (Btree a)
               deriving Show
data Dir = L | R 
           deriving Show
type Path = [Dir]

--extract

--add

--findpath
