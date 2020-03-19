false :: t -> Bool
false _ = False

apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto foo (a:b) | (foo a) = apagarEnquanto foo b 
    | otherwise = a : apagarEnquanto false b

foo :: Int -> Bool
foo x | (mod x 2 == 0) = True
	| otherwise = False

main = do
    let list = 2:4:1:2:3:4:5:[]
    print (list)
    print (apagarEnquanto foo list)