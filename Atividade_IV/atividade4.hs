xor :: Bool -> Bool -> Bool
xor False True = True
xor True False = True
xor x y = False

main = do
	x_str <- getLine
	y_str <- getLine
	let x = (read x_str :: Bool)
	let y = (read y_str :: Bool)
	print(xor x y)