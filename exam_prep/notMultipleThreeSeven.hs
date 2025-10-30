notMultipleThreeSeven :: Int -> [Int]
notMultipleThreeSeven limit = filter (\x -> even x && x `mod` 3 /= 0 && x `mod` 7 /= 0 && x < limit) [2,4..98]