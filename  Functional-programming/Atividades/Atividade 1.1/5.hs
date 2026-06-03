imc :: (String, Float, Float) -> String
imc (nome, peso, altura) =
    "Nome: " ++ nome ++
    " | Peso: " ++ show peso ++
    " | Altura: " ++ show altura ++
    " | IMC: " ++ show valorImc ++
    " | Classificacao: " ++ classificacao
    where
        valorImc = peso / (altura * altura)

        classificacao
            | valorImc < 18.5 = "Abaixo do peso"
            | valorImc < 25.0 = "Peso normal"
            | valorImc < 30.0 = "Sobrepeso"
            | otherwise = "Obesidade"

main :: IO ()
main = do
    putStrLn "Digite o nome:"
    nome <- getLine

    putStrLn "Digite o peso:"
    pesoStr <- getLine

    putStrLn "Digite a altura:"
    alturaStr <- getLine

    let peso = read pesoStr :: Float
    let altura = read alturaStr :: Float

    putStrLn (imc (nome, peso, altura))