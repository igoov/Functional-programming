main :: IO ()
main = do
    x <- getLine
    let n = read x :: Float
    print (n / 2)