contaPares :: Int -> Int
contaPares 0 = 0
contaPares n
    | even n = 1 + contaPares (n - 1)
    | otherwise = contaPares (n - 1)

main :: IO ()
main = do
    x <- getLine
    let n = read x :: Int
    print (contaPares n)