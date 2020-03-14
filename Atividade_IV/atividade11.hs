mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y | (x < y) = mdc y x
    | otherwise = mdc y (mod x y) 

main = do
    print(mdc 16 20)
    print(mdc 14 20)
    print(mdc 100 20)