type Pessoa = (String, Int, Float)

dadosPessoa :: Pessoa -> String
dadosPessoa (nome, idade, altura) =
    "Nome: " ++ nome ++
    " | Idade: " ++ show idade ++
    " | Altura: " ++ show altura