existe :: Int -> [Int] -> Bool

existe x [] = False


existe x (y:ys)

    | x == y = True

    | otherwise = existe x ys



uniao :: [Int] -> [Int] -> [Int]


uniao [] lista2 = lista2


uniao (x:xs) lista2

    | existe x lista2 =
        uniao xs lista2

    | otherwise =
        x : uniao xs lista2



main :: IO ()

main = do

    putStrLn "Primeira lista:"
    l1 <- readLn


    putStrLn "Segunda lista:"
    l2 <- readLn


    print (uniao l1 l2)