produtoMult3 :: Int -> Int
produtoMult3 0 = 1
produtoMult3 n
    | n <= 0 = 1
    | n `mod` 3 == 0 = n * produtoMult3 (n - 1)
    | otherwise = produtoMult3 (n - 1)

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    print (produtoMult3 n)