evenNine :: [Int]
evenNine = [x | x <- [1..299], x `mod` 9 == 0, even x]