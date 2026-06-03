main :: IO ()
main = do
    a <- getLine
    b <- getLine
    let x = read a :: Float
    let y = read b :: Float
    print ((x + y) / 2)