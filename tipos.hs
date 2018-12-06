type Autores = [String]
type Musica = (String, Int, Int)

bandas :: [Autores]
bandas = [ ["Gilberto Gil"],
    ["Victor", "Leo"],
    ["Gonzagao"],
    ["Claudinho", "Bochecha"] ]

musicas :: [Musica]
musicas = [ ("Aquele Abraco", 1, 100),
    ("Esperando na Janela", 1, 150),
    ("Borboletas", 2, 120),
    ("Asa Branca", 3, 120),
    ("Assum Preto", 3,140 ),
    ("Vem Morena", 3, 200), 
    ("Nosso Sonho", 4, 150),
    ("Quero te Encontrar", 4, 100) ]


banda :: Int -> [Autores] -> Autores
banda 1 (e:l) = e
banda n (e:l) = banda (n-1) l 

nomemusica :: [Musica] -> [a] -> Musica
nomemusica [] result = ("Nenhuma", 0 , 0)
nomemusica (e:l) result = e

main = print $ nomemusica musicas []
