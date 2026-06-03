-- 1. Defina todas as suas funções primeiro
polinomio :: Int -> Int
polinomio x = x*x + 10*x + 2

quadrado :: Int -> Int
quadrado n = n * n 

soma :: Float -> Float -> Float
soma a b = a + b

triplica :: Int -> Int 
triplica var = var * 3 

-- 2. Use apenas UM main para coordenar tudo
main :: IO ()
main = do
    putStr "Resultado Polinomio: "
    print (polinomio 2)
    
    putStr "Resultado Quadrado: "
    print (quadrado 4)
    
    putStr "Resultado Soma: "
    print (soma 6 5)
    
    putStr "Resultado Triplica: "
    print (triplica 3)