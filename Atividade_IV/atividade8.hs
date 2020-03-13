bhaskara1 :: Float->Float->Float->Float
bhaskara1 a b c = (((-b) + sqrt(b*b - 4*a*c)) / (2*a))

bhaskara2 :: Float->Float->Float->Float
bhaskara2 a b c = (((-b) - sqrt(b*b - 4*a*c)) / (2*a))

main = do
    print (bhaskara1 1 12 (-13))
    print (bhaskara2 1 12 (-13))
