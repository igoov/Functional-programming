produtoIntervalo :: Int -> Int -> Int
produtoIntervalo a b
    | a > b = 1
    | otherwise = a * produtoIntervalo (a + 1) b