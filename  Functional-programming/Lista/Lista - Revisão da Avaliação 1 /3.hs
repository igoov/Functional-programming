somaDivisores :: Int -> Int -> Int
somaDivisores n i
    | i >= n = 0
    | n `mod` i == 0 = i + somaDivisores n (i + 1)
    | otherwise = somaDivisores n (i + 1)

perfeito :: Int -> String
perfeito n
    | somaDivisores n 1 == n = "Perfeito"
    | otherwise = "Nao perfeito"

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    putStrLn (perfeito n)