-- CA320 Computability and Complexity
--
-- Manuel Mastrominico

shortestList :: [[a]] -> [a]

shortestList [x] = x
shortestList (x:xs) = if length x < length (shortestList xs)
                      then x
                      else shortestList xs