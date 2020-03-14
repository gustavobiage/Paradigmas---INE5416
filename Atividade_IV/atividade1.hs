power :: Float -> Float -> Float
power x y = x**y

main = do
	x_str <- getLine
	y_str <- getLine
	let x = (read x_str :: Float)
	let y = (read y_str :: Float)
	print (power x y)