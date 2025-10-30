data BinTree a = Empty | Node a (BinTree a) (BinTree a)
  deriving (Show)

inorder :: BinTree a -> [a]
inorder Empty = []
inorder (Node x left right) = inorder left ++ [x] ++ inorder right