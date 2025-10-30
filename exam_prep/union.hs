union :: Eq a => [a] -> [a] -> [a]
union xs ys = xs ++ filter (not . (`elem` xs)) ys