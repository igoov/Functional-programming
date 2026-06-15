base :: Int -> (Int,String,String,Char)

base 1 = (1793,"Pedro","Mestre",'M')
base 2 = (2560,"Ana","Doutor",'F')
base 3 = (1125,"Paula","Mestre",'F')
base 4 = (2000,"Arthur","Especialista",'M')
base 5 = (1100,"João","Mestre",'M')
base 6 = (1935,"Emanuel","Doutor",'M')
base 7 = (1845,"Sofia","Mestre",'F')
base 8 = (2100,"Vanessa","Especialista",'F')
base 9 = (1000,"Gabriel","Especialista",'M')
base 10 = (1500,"Claudia","Doutor",'F')



quantMestres :: Int -> Int

quantMestres 0 = 0


quantMestres x

    | cargo == "Mestre" =
        1 + quantMestres(x-1)

    | otherwise =
        quantMestres(x-1)

    where

    (_,_,cargo,_) = base x




quantMulheres :: Int -> Int

quantMulheres 0 = 0


quantMulheres x

    | sexo == 'F' =
        1 + quantMulheres(x-1)

    | otherwise =
        quantMulheres(x-1)

    where

    (_,_,_,sexo) = base x




mestresHomens :: Int -> Int

mestresHomens 0 = 0


mestresHomens x

    | cargo == "Mestre" && sexo == 'M' =
        1 + mestresHomens(x-1)

    | otherwise =
        mestresHomens(x-1)


    where

    (_,_,cargo,sexo)=base x




profAntigo :: Int -> (Int,String,String,Char)

profAntigo 1 = base 1


profAntigo x =
    menor (base x) (profAntigo(x-1))



menor :: (Int,String,String,Char)
      -> (Int,String,String,Char)
      -> (Int,String,String,Char)


menor a b

    | matricula a < matricula b = a

    | otherwise = b



matricula :: (Int,String,String,Char) -> Int

matricula (m,_,_,_) = m





main :: IO ()

main = do


    print (quantMestres 10)

    print (quantMulheres 10)

    print (mestresHomens 10)

    print (profAntigo 10)