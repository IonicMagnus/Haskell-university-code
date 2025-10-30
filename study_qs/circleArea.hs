circleArea :: Float -> Float
circleArea r = if r < 0 then error "Negative radius" else pi * (r ^ 2)
