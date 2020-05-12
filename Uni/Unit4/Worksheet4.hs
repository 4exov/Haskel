
--------------------------------------------------------------------
-- CO 2108  Functional Programming
-- Created: Feb 2020, University of Leicester, UK
--  20th February (not-assessed) 
--------------------------------------------------------------------
-- Student Name
-- Student Number
--------------------------------------------------------------------
--


module Worksheet4 where
import Data.Char

----------------------------------------------------------------------
-- Exercise 1: 
---------------------------------------------------------------------

elementof :: Int -> [Int] -> Bool
elementof x [] = False
elementof x (y:ys)
   | x == y = True
   |otherwise = elementof x ys


----------------------------------------------------------------------
-- Exercise 2
---------------------------------------------------------------------

removeNth :: Int -> [Int] -> [Int]
removeNth n list = [l | l<-list,l/=n]
----------------------------------------------------------------------
-- Exercise 3
---------------------------------------------------------------------

yoursort ::  [Int] -> [Int]
yoursort [] =[]
yoursort (a:as) = large ++ [a]++ small
                  where large = yoursort[b | b<-as, b>=a]
                        small = yoursort[b | b<-as, b<a]

----------------------------------------------------------------------
-- Exercise 4
---------------------------------------------------------------------

yournewsort ::  [String] -> [String]
yournewsort  [] = []
yournewsort  (a:as) = bigLexo++ [a]  ++smalLexo
                      where bigLexo =  yournewsort [ b | b<-as, b<a]
                            smalLexo = yournewsort [ b | b<-as, b>a]
----------------------------------------------------------------------
-- Exercise 5
---------------------------------------------------------------------

hoMergeSort :: (a -> b) -> [a] -> [a]
fun  [] = []

hoMergeSort fun [] = []
hoMergeSort fun (l:ls) =
   if fun l
      then 


