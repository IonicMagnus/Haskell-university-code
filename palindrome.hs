-- CA320 Computability and Complexity
--
-- Manuel Mastrominico

isPalindrome  :: (Eq a) => [a] -> Bool
isPalindrome x = if x == reverse x
                 then True
                 else False