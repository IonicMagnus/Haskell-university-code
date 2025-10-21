-- CSC1048 Computability and Complexity
--
-- Manuel Mastrominico

validTriangle:: (Num i, Ord i) => i -> i -> i -> Bool

validTriangle a b c
  | a >= b && a >= c && a < (b + c) = True
  | b >= a && b >= c && b < (a + c) = True
  | c >= a && c >= b && c < (a + b) = True
  | otherwise = False

triangleArea2 :: Float -> Float -> Float -> Float

triangleArea2 a b c = if (validTriangle a b c) then (triangleArea a b c)  else error "Not a triangle"