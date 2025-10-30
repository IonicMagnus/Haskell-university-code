difference :: Eq a => [a] -> [a] -> [a]
difference xs ys = [x | x <- xs, x `notElem` ys]