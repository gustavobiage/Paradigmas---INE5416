menor :: [Int] -> Int
-- if EMPTY return INF
menor [] = 222222222 
menor (a:b) | (a < menor b) = a
	| otherwise = menor b

main = do
	let list = 3:4:2:6:5:[]
	print(menor list)