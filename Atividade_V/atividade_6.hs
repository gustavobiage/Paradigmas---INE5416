ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (a:b) x | (a == x) = 1 + (ocorrencias b x)
	| otherwise = ocorrencias b x

main = do
	let list = 2:3:4:2:6:2:5:[]
	print(ocorrencias list 2)
	print(ocorrencias list 1)