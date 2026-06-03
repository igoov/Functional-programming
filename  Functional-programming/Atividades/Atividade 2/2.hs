main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    print (n * 2)