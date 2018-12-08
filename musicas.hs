{-
    Cria duas estruturas de dados e implementa os conceitos de Map, Filter e Reduce(Fold) sobre 
    listas de tais estruturas.
-}

type Cantores = [String]
type Musica = (String, Int, Int)

bandas :: [Cantores]
bandas = [ ["Gilberto Gil"],
    ["Victor", "Leo"],
    ["Gonzagao"],
    ["Claudinho", "Bochecha"],
    ["Anitta"],
    ["Roberta Sá"] ]

musicas :: [Musica]
musicas = [ ("Aquele Abraco", 1, 100),
    ("Esperando na Janela", 1, 150),
    ("Borboletas", 2, 120),
    ("Asa Branca", 3, 120),
    ("Assum Preto", 3,140 ),
    ("Vem Morena", 3, 200), 
    ("Nosso Sonho", 4, 150),
    ("Quero te Encontrar", 4, 100),
    ("Bang Bang", 5, 200),
    ("Samba de um Minuto", 6, 300) ]


banda :: Int -> [Cantores] -> Cantores
banda 1 (e:l) = e
banda n (e:l) = banda (n-1) l 

--Definição das funções map, filter e fold
map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (e:l) = f e : map' f l

filter' :: (a -> Bool) -> [a] -> [a]
filter' f [] = []
filter' f (e:l)
    | f e = e : filter' f l
    | otherwise = filter' f l

fold' :: (a -> b -> b) -> [a] -> b -> b
fold' f [] m = m
fold' f (e:l) m = f e (fold' f l m)


--Definição das funções que tratarão a estrutura dos dados
getFirst = (\(a,_,_) -> a)
maiorDuracao = (\(_,_, a) m -> (max a m))
maisDe2Minutos = (\(_,_,a) -> (a >= 120))

nomesMusicas = map' getFirst musicas
musicasLongas = filter' maisDe2Minutos musicas
maiorTempo = fold' maiorDuracao musicas 0


main = print nomesMusicas
