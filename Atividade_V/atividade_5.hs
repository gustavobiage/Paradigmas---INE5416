busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (a:b) x | (a == x) = True
	| otherwise = busca b x

main = do
	let list = 3:4:2:6:5:[]
	print (busca list 4)
	print (busca list 1)