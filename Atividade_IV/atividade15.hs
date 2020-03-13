coprimes :: Int -> Int -> Int
coprimes x y | (mdc x y == 1) = 1
	| otherwise = 0

mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y | (x < y) = mdc y x
	| otherwise = mdc y (mod x y) 

totiente_calc :: Int -> Int -> Int
totiente_calc 0 _ = 0
totiente_calc x y = (coprimes x y) + (totiente_calc (x-1) y)

totiente :: Int -> Int
totiente x = totiente_calc (x-1) x

main = do
	print(totiente 10)
	