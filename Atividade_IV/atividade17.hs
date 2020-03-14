prime :: Int -> Bool
prime x | (find_divisor x (x-1) == 1) = True
	| otherwise = False 

is_divisor :: Int -> Int -> Bool
is_divisor x y | ((mod x y) == 0) = True
	| otherwise = False

find_divisor :: Int -> Int -> Int
find_divisor _ 1 = 1
find_divisor x y = 
	if is_divisor x y then
		y
	else
		find_divisor x (y-1)
	

main = do
	print(prime 5)
	print(prime 6)
	print(prime 7)
	print("End")