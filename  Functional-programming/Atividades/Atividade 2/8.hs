main :: IO ()
main = do
    c <- getLine
    let celsius = read c :: Float
    let f = (celsius * 9/5) + 32
    print f