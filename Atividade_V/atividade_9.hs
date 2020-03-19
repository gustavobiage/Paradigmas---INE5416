mapear :: (t -> y) -> [t] -> [y]
mapear _ [] = []
mapear foo (a:b) = foo (a) : mapear foo b

foo :: Int -> Int
foo x = x*2

main = do
	let list = 2:3:4:2:6:2:5:[]
	print (list)
	print (mapear foo list)