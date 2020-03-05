
mainSort [] = []
mainSort (l:ls)     = 
  let smallerSorted = mainSort[a| a<-ls, a <= l]
      biggerSorted  = mainSort[a| a<-ls, a > l]
  in smallerSorted ++ [l] ++ biggerSorted

type Lastname = String 
type Username = String 
type Mark = Int

type Spreadsheet = [(Lastname, Username, Mark)]


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
