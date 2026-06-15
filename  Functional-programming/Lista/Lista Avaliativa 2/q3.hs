multiplica :: Int -> [(Int,Int,Int)]

multiplica n = aux n 1



aux :: Int -> Int -> [(Int,Int,Int)]

aux n contador

    | contador > 10 = []

    | otherwise =
        (n,contador,n*contador) :
        aux n (contador+1)



main :: IO ()

main = do

    putStrLn "Digite um numero:"
    n <- readLn

    print (multiplica n)