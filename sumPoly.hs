-- CA320 Computability and Complexity
--
-- Manuel Mastrominico

type Poly = [Int]
sumPoly :: Poly -> Poly -> Poly
sumPoly [] p = p
sumPoly p [] = p
sumPoly (p:ps) (q:qs) = (p+q) : sumPoly ps qs