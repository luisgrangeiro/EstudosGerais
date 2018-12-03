{-
    Cria uma estrutura de lista genérica
    e aplica os conceitos de map e filter
-}

data Lista x = Vazia | Par x (Lista x)
    deriving (Show)

map' :: (a -> b) -> Lista a -> Lista b
map' f Vazia = Vazia
map' f (Par e l) = Par (f e) (map' f l)

filter' :: (a -> Bool) -> (Lista a) -> (Lista a)
filter' f Vazia = Vazia
filter' f (Par e l) = if f e then 
                            Par e (filter' f l)
                        else
                            filter' f l
                    
s = filter' (\x->(mod x 2)==1) (Par 1 (Par 2 (Par 3 (Vazia))))

--r = map' (\x -> x*2) (Par 1 (Par 2 (Par 3 (Vazia))))

main = print s
