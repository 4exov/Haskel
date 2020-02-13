myNumber1 x  = [ a | a<-x, a `mod` 7 == 0]
--find all of the numbers from 1 to 10000 that have a 3 in them.
--myNumber2 x  = [a | a<-x, a
--count the number of spaces in a string
--remove all of the vowels in a string

noVowels myword = [b | b<-myword, b /= 'a']
--find all of the words in a string that are  less than 4 letters
