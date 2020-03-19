soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

main = do
	let x = 1:2:3:4:[]
	print(soma x)