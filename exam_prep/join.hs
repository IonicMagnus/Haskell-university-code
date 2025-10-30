join :: Eq a => [a] -> [a] -> [a]
join xs ys = uniquesFromFirst xs ys ++ ys
  where
    uniquesFromFirst [] _ = []
    uniquesFromFirst (x:xs) ys = if not (inList x ys)
                                 then x : uniquesFromFirst xs ys
                                 else uniquesFromFirst xs ys

    inList :: Eq a => a -> [a] -> Bool
    inList _ [] = False
    inList x (y:ys) = x == y || inList x ys