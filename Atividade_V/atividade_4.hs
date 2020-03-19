maior :: [Int] -> Int
-- if EMPTY return negative INF
maior [] = -222222222
maior (a:b) | (a > maior b) = a
	| otherwise = maior b

menor :: [Int] -> Int
-- if EMPTY return INF
menor [] = 222222222 
menor (a:b) | (a < menor b) = a
	| otherwise = menor b

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor x = (maior x) - (menor x)

main = do
	let list = 3:4:2:6:5:[]
	print(diferencaMaiorMenor list)
