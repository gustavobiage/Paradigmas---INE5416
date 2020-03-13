begin_search :: Int -> Int
begin_search x = search 1 x

search :: Int -> Int -> Int
search x lim | (x >= lim) = -1
    | (find_pair x x lim) = x
    | otherwise = search (next_prime(x+1)) lim


find_pair :: Int -> Int -> Int -> Bool
find_pair x y n =
    if y >= n then
        False
    else if x + y == n then
        True
    else
        find_pair x (next_prime (y+1)) n

next_prime :: Int -> Int
next_prime x =
    if prime x then
        x
    else
        next_prime (x+1)

prime :: Int -> Bool
prime x | (find_divisor x (x-1) == 1) = True
    | otherwise = False 

is_divisor :: Int -> Int -> Bool
is_divisor x y | (mod x y == 0) = True
    | otherwise = False

find_divisor :: Int -> Int -> Int
find_divisor _ 0 = 0
find_divisor _ 1 = 1
find_divisor x y = 
    if is_divisor x y then
        y
    else
        find_divisor x (y-1)

main = do
    print("3: ")
    print(begin_search 3)
    print("4: ")
    print(begin_search 4)
    print("5: ")
    print(begin_search 5)
    print("6: ")
    print(begin_search 6)
    print("7: ")
    print(begin_search 7)
    print("33: ")
    print(begin_search 33)
    print("44: ")
    print(begin_search 44)
    print("66: ")
    print(begin_search 66)
    print("98: ")
    print(begin_search 98)
    print("1087: ")
    print(begin_search 1087)
    print("2526: ")
    print(begin_search 2526)
    print("7084: ")
    print(begin_search 7084)
    