main :: IO ()
main = do
    nome <- getLine
    idade <- getLine
    putStrLn ("Seu nome é " ++ nome ++ " e você tem " ++ idade ++ " anos")