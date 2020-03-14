operate :: Char -> Float -> Float -> Float
operate '+' x y = x + y
operate '*' x y = x * y
operate '-' x y = x - y
operate '/' x y = x / y

main = do
	print(operate '+' 10 4)
	print(operate '-' 10 4)
	print(operate '*' 10 4)
	print(operate '/' 10 4)