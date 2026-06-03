main :: IO ()
main = do
    idade <- getLine
    putStrLn ("Você tem " ++ idade ++ " anos")