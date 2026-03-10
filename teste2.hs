main = do
    putStrLn "Digite o primeiro numero:"
    a <- getLine
    putStrLn "Digite o segundo numero:"
    b <- getLine
    let soma = (read a :: Int) + (read b :: Int)
    putStrLn ("A soma é: " ++ show soma)