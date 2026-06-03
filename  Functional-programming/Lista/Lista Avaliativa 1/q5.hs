somaPares :: Int -> Int -> Int
somaPares a b
    | a > b = 0
    | even a = a + somaPares (a + 1) b
    | otherwise = somaPares (a + 1) b

produtoImpares :: Int -> Int -> Int
produtoImpares a b
    | a > b = 1
    | odd a = a * produtoImpares (a + 1) b
    | otherwise = produtoImpares (a + 1) b

main :: IO ()
main = do
    a <- getLine
    b <- getLine
    let x = read a :: Int
    let y = read b :: Int

    print (somaPares x y)
    print (produtoImpares x y)