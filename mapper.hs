{-
    Exemplo para mostrar que a função map é feita recursivamente.

    map (*2) [1..10]
-}

map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (e:l) = (f e) : (map' f l)

r = map' (\x -> x*2) [1..10]

main = print r
