-- CSC1048 Computability and Complexity
--
-- Manuel Mastrominico

myAppend :: [a] -> [a] -> [a]

myAppend [] x = x
myAppend (x:xs) y = x:(myAppend xs y)


myHead :: [a] -> a

myHead [] = error "Empty List"
myHead (x:_) = x


myLast :: [a] -> a

myLast [] = error "Empty List"
myLast [x] = x
myLast (_:xs) = myLast xs


myTail :: [a] -> [a]

myTail [] = error "Empty List"
myTail (_:xs) = xs


myInit :: [a] -> [a]

myInit [] = error "Empty List"
myInit [x] = []
myInit (x:xs) = x:(myInit xs)


myLength :: [a] -> Int

myLength [] = 0
myLength (_:xs) = 1 + myLength xs


myReverse :: [a] -> [a]

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]


myConcat :: [a] -> [a] -> [a]

myConcat [] y = y
myConcat (x:xs) y = x:(myConcat xs y)


mySum :: (Num a) => [a] -> a

mySum [] = 0
mySum (x:xs) = x + mySum xs


myProduct :: (Num a) => [a] -> a

myProduct [] = error "Empty List"
myProduct [a] = a
myProduct (x:xs) = x * myProduct xs


myMaximum :: (Ord a) => [a] -> a

myMaximum [] = error "Empty List"
myMaximum [a] = a
myMaximum (x:xs) = let large = myMaximum xs in
                     if x > large
                     then x
                     else large


myMinimum :: (Ord a) => [a] -> a

myMinimum [] = error "Empty List"
myMinimum [a] = a
myMinimum (x:xs) = let small = myMinimum xs in
                     if x < small
                     then x
                     else small


myElem :: (Eq a) => a -> [a] -> Bool

myElem _ [] = False
myElem x (y:ys) = if x == y
                  then True
                  else (myElem x ys)


myDelete :: (Eq a) => a -> [a] -> [a]

myDelete _ [] = []
myDelete x (y:ys) = if x == y
                    then ys
                    else y:(myDelete x ys)


myUnion :: (Eq a) => [a] -> [a] -> [a]

myUnion x [] = x
myUnion x (y:ys) = if myElem y x
                   then myUnion x ys
                   else myUnion (x ++[y]) ys


myIntersect :: (Eq a) => [a] -> [a] -> [a]

myIntersect [] _ = []
myIntersect (x:xs) y = if myElem x y
                       then x:(myIntersect xs y)
                       else (myIntersect xs y)
