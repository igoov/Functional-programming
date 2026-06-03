main :: IO ()
main = do
    a <- getLine
    b <- getLine
    let x = read a :: Float
    let y = read b :: Float

    putStrLn ("Soma: " ++ show (x + y))
    putStrLn ("Subtração: " ++ show (x - y))
    putStrLn ("Multiplicação: " ++ show (x * y))
    putStrLn ("Divisão: " ++ show (x / y))