multiplos :: [Int] -> Int -> [Int]

multiplos [] n = []


multiplos (x:xs) n

    | x > n && x `mod` 3 == 0 =
        x : multiplos xs n

    | otherwise =
        multiplos xs n



main :: IO ()

main = do

    putStrLn "Digite uma lista:"
    lista <- readLn


    putStrLn "Digite o numero:"
    n <- readLn


    print (multiplos lista n)