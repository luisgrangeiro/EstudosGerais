data Lista a = Par a (Lista a ) | Vazio 

p1 = Par 10 Vazio
p2 = Par 20 p1
p3 = Par 30 p2

existe :: Eq a => (Lista a) -> a -> Bool

existe Vazio v = False
existe (Par x y) v = (x == v) || (existe y v)

main = print (existe p3 10)