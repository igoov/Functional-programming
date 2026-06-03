main :: IO ()
main = do
    l <- getLine
    let lado = read l :: Float
    print (lado * lado)