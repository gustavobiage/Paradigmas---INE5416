distance :: Float->Float->Float->Float->Float->Float->Float
distance x1 y1 z1 x2 y2 z2 = sqrt((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1) + (z2 - z1)*(z2 - z1))

main = do
    print (distance 2 3 1 8 (-5) 0)