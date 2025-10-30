data BTree a = Empty | Node a (BTree a) (BTree a)
    deriving (Eq, Show)

postorder :: BTree a -> [a]
postorder Empty = []
postorder (Node v left right) = postorder left ++ postorder right ++ [v]

preorder :: BTree a -> [a]
preorder Empty = []
preorder (Node v left right) = v : (preorder left ++ preorder right)

inorder :: BTree a -> [a]
inorder Empty = []
inorder (Node v left right) = inorder left ++ [v] ++ inorder right