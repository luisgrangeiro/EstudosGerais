{-
    Exemplo de implementação de folder que recebe uma função e uma lista.
    Nesse caso retorna a subtração dos elementos da lista recursivamente
    do ulitmo elemento ao primeiro.
-}

fold' :: (a -> b -> b) -> b -> [a] -> b
fold' f acc [] = acc
fold' f acc (e:l) = f e (fold' f acc l)

lista = [1,2,3,4]

sub = fold' (\v acc -> v-acc) 0 lista

main = print sub
