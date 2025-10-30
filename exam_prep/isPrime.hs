isPrime :: Int -> Bool
isPrime n
  | n < 2 = False
  | otherwise = null [x | x <- [2..n-1], n `mod` x == 0]