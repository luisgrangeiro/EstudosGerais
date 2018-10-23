sumMultipleOfSix list = sum [x | x <- list, x `mod` 6 == 0]

main = print (sumMultipleOfSix [1..10000])
