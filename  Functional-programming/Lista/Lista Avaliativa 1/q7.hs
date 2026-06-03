somaDigitos :: Int -> Int
somaDigitos 0 = 0
somaDigitos n = (n `mod` 10) + somaDigitos (n `div` 10)

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    print (somaDigitos n)