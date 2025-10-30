sumOddProductEven :: Int -> Int -> Int
sumOddProductEven x y
  | odd x || odd y = x + y
  | otherwise = x * y