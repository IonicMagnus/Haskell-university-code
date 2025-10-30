
oddAndSeven :: Int -> [Int]
oddAndSeven limit = filter (\x -> odd x && x `mod` 7 == 0 && x < limit) [1..limit-1]

