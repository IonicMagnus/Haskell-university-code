listNum :: Int -> Int -> [Int]
listNum x y 
  | x > y = []
  | otherwise = [x..y]