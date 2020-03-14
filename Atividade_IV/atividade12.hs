mdc_t :: Int->Int->Int->Int
mdc_t a b c = (mdc) (mdc a b) (mdc a c)

mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y | (x < y) = mdc y x
    | otherwise = mdc y (mod x y) 

main = do
    print(mdc_t 25 50 75)
    print(mdc_t 40 50 75)
    print(mdc_t 27 93 66)
    print(mdc_t 44 56 84)