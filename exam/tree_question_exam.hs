data BTree a = Empty | Node a (BTree a) (BTree a)
     deriving (Eq, Show)

preorder :: BTree a -> [a]
preorder Empty = []
preorder (Node v left right) = v : (preorder left ++ preorder right)