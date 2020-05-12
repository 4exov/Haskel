module Cw3 where
import Data.Char
--ambiguous occurence 'Word' due to this error Mord instead of Word is used.
type RawText = String
type Mord = String
type Line = [Mord]
type Page = [Line]
--task 2.a code from Haskell documentation is used . Do not believe that during exam is expecting to remember haskell documentation. I'm looking how this task could be used with knowledge we gain during our FP lectures.
split :: RawText -> [Mord]
split rawText = case dropWhile {-partain:Char.-}isSpace rawText of
                     "" -> []
                     rawText' -> w: split rawText''
                                 where (w,rawText'') = break {-partain:Char.-}isSpace rawText'


--wrap :: [Mord] -> Page
myString = "We want to write Haskel code that can typeset a given text string as a (single) page of lines of at most 30 characters. "
myString1 = ["we", "want", "to", "write", "Haskel", "code"]
myNewString :: Line -> Page
wordCount [] = 0
wordCount (l:ls) = 1 + wordCount ls
myNewString [] = []
myNewString myText   =[take n(myText)++["\n"]] ++ myNewString(drop n(myText))
 
                    where n = (30 `div` (wordCount myString `div` wordCount (split myString)))
page2string :: Page -> String
page2string [] = []
page2string (l:ls) = page2string1 l ++ page2string ls
                     where page2string1 [] = []
                           page2string1 (l:ls) = l ++" "++ page2string1 ls



typeset :: String -> IO()
typeset myString = putStrLn(page2string (myNewString(split myString)))

--TASK3

data Tree a = L a | N a (Tree a) (Tree a) deriving Show
data Dir = F | M deriving Show
type Path = [Dir]

addPath:: Tree a -> Tree (Path, a)
addPath (L a) = L ([],a) 

--addPath (N a left right) = N ([],a) (addPath left) (addPath right)
addPath (N a left right) =N([],a) father mother
                          where 

                               father = addPath(left)

                               mother = addPath(right)
                              

--commented due to error: Expected type [(Path, String)] actual type [String] but function returns list of tuples as was asked.
--makesortedlist:: Tree String -> [(Path,String)]
makesortedlist myEntry =sorting(flatten myEntry)
flatten :: Tree a -> [a]
flatten (L a) = [a]
flatten (N a t1 t2) = flatten t1 ++ [a] ++ flatten t2
get2nd (_,y) = y
sorting [] = []
sorting (l:ls) = small ++[l]++ big
                             where small = sorting [a | a<-ls, get2nd a <= get2nd l]
                                   big   = sorting [a | a<-ls, get2nd a >get2nd l]



