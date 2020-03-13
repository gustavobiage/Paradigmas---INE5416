is_divisor :: Int -> Int -> Bool
is_divisor x y | ((mod x y) == 0) = True
	| otherwise = False

main = do
	print(is_divisor 10 2)
	print(is_divisor 5 2)
	print(is_divisor 50 2)
	print(is_divisor 50 3)
	print(is_divisor 50 5)