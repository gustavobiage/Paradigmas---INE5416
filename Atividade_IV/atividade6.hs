form_triangle :: Float -> Float -> Float -> Bool
form_triangle x y z | (x >= y + z) = False
	| (y >= x + z) = False
	| (z >= x + y) = False
	| otherwise = True

main = do
	x_str <- getLine
	y_str <- getLine
	z_str <- getLine
	let x = (read x_str :: Float)
	let y = (read y_str :: Float)
	let z = (read z_str :: Float)
	print(form_triangle x y z)
