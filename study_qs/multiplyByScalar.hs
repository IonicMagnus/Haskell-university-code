multiplyByScalar :: Float -> Poly -> Poly
multiplyByScalar _ [] = []
multiplyByScalar s (p:ps) = (s*p) : multiplyByScalar s ps