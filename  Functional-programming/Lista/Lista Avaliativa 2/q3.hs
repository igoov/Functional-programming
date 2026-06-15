fibAux :: Int -> Int -> Int -> Int
fibAux 0 a _ = a
fibAux n a b = fibAux (n - 1) b (a + b)

fibonacci :: Int -> Int
fibonacci n = fibAux n 0 1

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    print (fibonacci n)