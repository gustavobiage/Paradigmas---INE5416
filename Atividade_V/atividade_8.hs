inverte :: [t] -> [t]
inverte [] = []
inverte (a:b) = (inverte b) ++ (a:[])

main = do
	let list = 2:3:4:2:6:2:5:[]
	print (list)
	print (inverte list)