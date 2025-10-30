data BinTree t = Empty | Root t (BinTree t) (BinTree t)
                 deriving (Eq, Ord, Show)

preorder :: BinTree a -> [a]
preorder Empty = []
preorder (Root x left right) = [x] ++ preorder left ++ preorder right