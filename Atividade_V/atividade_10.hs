filtrar :: (t -> Bool) -> [t] -> [t]
filtrar _ [] = []
filtrar foo (a:b) | (foo a) = a : filtrar foo b
	| otherwise = filtrar foo b

foo :: Int -> Bool
-- if ODD return True
foo x | (mod x 2 == 1) = True
-- else return False
	| otherwise = False

main = do
	let list = 2:3:4:2:6:2:5:[]
	print(list)
	print(filtrar foo list)