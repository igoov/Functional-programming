-- primeiro progama em haskell 

polinomio :: Int -> Int -- antes dos :: é o nome da função; :: é do tipo da função; int (antes da seta) tipo de paramentro de entrada; -> transforma/recebe/retorna; int (depois da seta) tipo de retorno.
polinomio x = x*x + 10*x + 2

main :: IO () -- IO significa que a função faz entrada ou saída de dados (Input/Output), () significa que não retorna um valor importante, apenas executa a ação
main = print (polinomio 2)

