
--------------------------------------------------------------------
-- CO 2008  Functional Programming
-- Created: January 2020, University of Leicester, UK
-- handin 9.00 hr on paper on 6th February (assessed) 
--------------------------------------------------------------------
-- Student Name
-- Student Number
--------------------------------------------------------------------
--
-- Please don't hand in buggy solutions. That makes the marking harder.
-- Points may be deducted if your solution does not compile properly...
-- use a good looking layout

module Worksheet2 where
import Data.Char
import Prelude hiding (replicate)
------------------------- ---------------------------------------------
-- Exercise 1: A phone book
---------------------------------------------------------------------

type Name = String
type PhoneNumber = Int
type Person  = (Name, PhoneNumber)
type PhoneBook = [Person]

-- Part a)

add :: Person -> PhoneBook -> PhoneBook
add (myName,myPhoneNumber) [(a,b)] = [(myName,myPhoneNumber)]++[(a,b)]


--delete  :: Name -> PhoneBook -> PhoneBook
--delete name (myName,phoneNumber)
--name == myName   = []
--otherwise        = [(myName,phoneNumber)]

--  Part c)

--find  :: Name -> PhoneBook -> [PhoneNumber]
--find ?

--  Part d)

--update :: Name ->  PhoneNumber -> PhoneNumber-> PhoneBook -> PhoneBook
--update ?

-----------------------------------------------------------------
-- Exercise 2:  Customers of a Bank
-----------------------------------------------------------------

type NI = Int
type Age = Int
type Balance = Float
type Customer  = (NI,Age, Balance)
type Bank =  [Customer]

-- Part a)
retired :: Customer -> Bool

retired (ni,age,balance) = (age > 67)

-- Part b)
deposit :: Customer -> Float -> Customer
deposit (ni,age,balance) addToBalance = (ni,age,balance + addToBalance)

-- Part c)
withdraw :: Customer -> Float -> Customer
withdraw (ni,age,balance) withdrawFromBalance 
   | balance > withdrawFromBalance  = (ni,age,balance - withdrawFromBalance)
   | otherwise                      = error "not enough money"

-- Part d)
credit :: Bank -> [Customer]
credit [(ni,age,balance)]
   | balance > 0  = [(ni,age,balance)]
   | otherwise    = []


-----------------------------------------------------------------
-- Exercise 3: cubeOdds
-----------------------------------------------------------------

cubeOdds :: [Int]-> [Int]
cubeOdds list = [ x * x * x | x<-list, x `mod` 2 == 1]  

cubeOdds2 :: [Int]-> [Int]
cubeOdds2 newList =  map cube (filter isOdd newList )
                        where  
                        isOdd  x = (x `mod` 2 == 1) 
                        cube x = x^3
                        


                       



-----------------------------------------------------------------
-- Exercise 4. addIndex
-----------------------------------------------------------------

addIndex :: [Int] -> [(Int,Int)]

addIndex list = zip [1..]list

------------------------------------------------
---- Exercise 5. ?? 
---------------------------------

{-consider
f :: [Int] -> [Int]

f x = [ 1 | y <- x]

what is the type (use integers as base type)

what does this function do and why? this function replace every item in list x with 1.

what does [1..9] evaluate to [1,1,1,1,1,1,1,1,1]

-}


------------------------------------------------
---- replicate 6.  
---------------------------------

replicate :: Int -> String -> [String]
replicate number [] = []
replicate 1 word = [word]
replicate number word = word : replicate (number-1) word 
  
--repeat n string should repeat the input string n times
-- example
--replicate 3 "test" = ["test","test","test"]



