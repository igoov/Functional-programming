fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    print (fatorial n)