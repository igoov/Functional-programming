main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    putStrLn ("Antecessor: " ++ show (n - 1))
    putStrLn ("Sucessor: " ++ show (n + 1))