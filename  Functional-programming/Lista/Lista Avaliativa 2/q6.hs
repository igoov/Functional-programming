tamanho :: String -> Int

tamanho [] = 0


tamanho (x:xs) =
    1 + tamanho xs



maiorString :: String -> String -> String


maiorString a b

    | tamanho a > tamanho b = a

    | otherwise = b



main :: IO ()

main = do

    putStrLn "Primeira string:"
    a <- getLine


    putStrLn "Segunda string:"
    b <- getLine


    putStrLn (maiorString a b)