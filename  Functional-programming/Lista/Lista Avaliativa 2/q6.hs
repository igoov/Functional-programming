imprimir :: Int -> IO ()
imprimir n
    | n <= 0 = return ()
    | otherwise = do
        imprimir (n - 1)
        print n

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    imprimir n