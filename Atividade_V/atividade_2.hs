import Data.Function

comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (a:b) = 1 + comprimento b

media_ :: [Int] -> Int -> Float
media_ [] _ = 0
media_ (a:b) len = (fromIntegral a) / (fromIntegral len) + media_ b len

media :: [Int] -> Float
media [] = 0
media x = media_ x (comprimento x)

main = do
	let list = 1:2:3:4:[]
	print(media list)