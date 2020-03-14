fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib (x-1) + fib (x-2)

main = do
	x_str <- getLine
	let x = (read x_str :: Int)
	print(fib x)