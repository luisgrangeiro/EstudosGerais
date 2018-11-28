{-
  Exemplo simples para aplicação dos conceitos de Currying e compreensão de listas para disciplina
  Estrutura de linguagens
-}

fatorial :: (Integral a) => a -> a
fatorial 0 = 1
fatorial n = n * fatorial (n -1)

somaDoFatorial :: [Int] -> Int 
somaDoFatorial xs = sum [fatorial x | x <- xs]

main = print $ somaDoFatorial [1..5]
        
