somaDigitos :: Int -> Int
somaDigitos 0 = 0
somaDigitos n = (n `mod` 10) + somaDigitos (n `div` 10)

main = do
    putStrLn "Digite um numero:"
    n <- readLn
    print (somaDigitos n)