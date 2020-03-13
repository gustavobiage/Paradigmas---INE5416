myMax :: Int->Int->Int->Int
myMax a b c | (a >= b && a >= c) = a
    | (b >= a && b >= c) = b
    | (c >= a && c >= b) = c

main = do
    print(myMax 1 2 3)
    print(myMax 3 4 1)
    print(myMax 6 4 7)
    print(myMax 12 9 9)