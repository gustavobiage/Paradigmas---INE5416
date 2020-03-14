absx :: Int -> Int
absx x | (0 > x) = x*(-1)
	| otherwise = x

main = do
	x_str <- getLine
	let x = (read x_str :: Int)
	print(absx x)