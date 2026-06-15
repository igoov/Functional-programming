imc :: (String,Float,Float) -> String

imc (nome,peso,altura) =
    nome ++ " IMC: " ++ show valor ++ " - " ++ situacao

    where

    valor = peso / (altura * altura)

    situacao
        | valor < 18.5 = "Abaixo do peso"
        | valor < 25 = "Peso normal"
        | valor < 30 = "Sobrepeso"
        | otherwise = "Obesidade"



main :: IO ()

main = do

    putStrLn "Nome:"
    nome <- getLine

    putStrLn "Peso:"
    peso <- readLn

    putStrLn "Altura:"
    altura <- readLn

    putStrLn (imc(nome,peso,altura))