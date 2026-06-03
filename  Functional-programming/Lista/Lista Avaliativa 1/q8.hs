contaDigitos :: Int -> Int
contaDigitos 0 = 0
contaDigitos n = 1 + contaDigitos (n `div` 10)

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    print (contaDigitos n)