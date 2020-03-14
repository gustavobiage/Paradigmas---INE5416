coprimes :: Int -> Int -> Bool
coprimes x y | (mdc x y == 1) = True
	| otherwise = False

mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y | (x < y) = mdc y x
	| otherwise = mdc y (mod x y) 

main = do
	print(coprimes 8 27)
	print(coprimes 34 93)
	print(coprimes 14 15)