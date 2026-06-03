ehPrimo :: Int -> Bool
ehPrimo n = verificaDivisores n 2

verificaDivisores :: Int -> Int -> Bool
verificaDivisores n d
    | d * d > n = True
    | n `mod` d == 0 = False
    | otherwise = verificaDivisores n (d + 1)

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    if ehPrimo n
        then putStrLn "É primo"
        else putStrLn "Não é primo"