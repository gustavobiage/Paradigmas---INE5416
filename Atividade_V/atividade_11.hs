primeiros :: Int -> [t] -> [t]
primeiros 0 _ = []
primeiros n (a:b) = a : primeiros (n-1) b

main = do
	let list = 2:3:4:2:6:2:5:[]
	print (list)
	print (primeiros 3 list)
	print (primeiros 5 list)