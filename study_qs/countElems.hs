countElems :: (Eq a) => a -> [a] -> Int
countElems _ [] = 0
countElems y (x:xs) = if x == y then 1 + countElems y xs else countElems y xs