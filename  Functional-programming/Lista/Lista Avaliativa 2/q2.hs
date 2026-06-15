estoque :: (Int,Int,Float) -> (Int,Float,String)

estoque (codigo,qtd,valor) =

    (codigo,total,situacao)

    where

    total = fromIntegral qtd * valor


    situacao

        | qtd < 10 = "Estoque Baixo"

        | qtd <= 50 = "Estoque Medio"

        | otherwise = "Estoque Alto"



main :: IO ()

main = do

    putStrLn "Codigo:"
    codigo <- readLn

    putStrLn "Quantidade:"
    qtd <- readLn

    putStrLn "Valor:"
    valor <- readLn


    print (estoque(codigo,qtd,valor))