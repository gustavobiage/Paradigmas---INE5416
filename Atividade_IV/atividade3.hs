triangle_area :: Float -> Float -> Float
triangle_area b h = (b * h) / 2

main = do
	base_str <- getLine
	hight_str <- getLine
	let base = (read base_str :: Float)
	let hight = (read hight_str :: Float)
	print(triangle_area base hight)