lerInt :: String -> Int
lerInt x = read x :: Int

parImpar :: Int -> String
parImpar n
    | even n = "Par"
    | otherwise = "Impar"

dobro :: Int -> Int
dobro n = n * 2

fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

main :: IO ()
main = do
    putStrLn "Digite um numero:"
    x <- getLine
    let n = lerInt x

    putStrLn ("Par ou Impar: " ++ parImpar n)
    putStrLn ("Dobro: " ++ show (dobro n))
    putStrLn ("Fatorial: " ++ show (fatorial n))