resultadoNota :: Float -> String
resultadoNota n
    | n >= 6 = "Aprovado"
    | otherwise = "Reprovado"

main :: IO ()
main = do
    x <- getLine
    let nota = read x :: Float
    putStrLn (resultadoNota nota)