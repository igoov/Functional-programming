potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia x y = x * potencia x (y - 1)

main :: IO ()
main = do
    x <- getLine
    y <- getLine
    let a = read x :: Int
    let b = read y :: Int
    print (potencia a b)