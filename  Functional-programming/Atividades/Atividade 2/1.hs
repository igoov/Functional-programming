main :: IO ()
main = do
    nome <- getLine
    putStrLn ("Olá, meu nome é " ++ nome)