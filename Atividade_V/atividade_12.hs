apagar :: Int -> [t] ->[t]
apagar _ [] = []
apagar 0 (a:b) = a : apagar 0 b
apagar n (a:b) = apagar (n-1) b

main = do
	let list = 2:3:4:2:6:2:5:[]
	print (list)
	print (apagar 3 list)
	print (apagar 5 list)
