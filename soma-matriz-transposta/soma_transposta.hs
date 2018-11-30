{-

    Exemplo usado para realizar
    a soma das transpostas de
    duas matrizes quaisquer.
    
-}

import Data.List

somaMatrizesTranspostas :: (Num a) => [[a]] -> [[a]] -> [[a]]
somaMatrizesTranspostas [] [] = []
somaMatrizesTranspostas m1 m2 = (zipWith.zipWith) (+) (transpose m1) (transpose m2)

main = print $ somaMatrizesTranspostas [[1,2,3],[4,5,6]] [[1,2,3],[4,5,6]]
    
