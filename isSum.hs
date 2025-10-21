-- CSC1048 Computability and Complexity
--
-- Manuel Mastrominico

isSum:: (Eq i, Num i) => i -> i -> i -> Bool

isSum a b c
    | a == b + c = True
    | b == a + c = True
    | c == b + a = True
    | otherwise = False