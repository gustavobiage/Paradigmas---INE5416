alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

-- gerarPares :: (t->t->Bool) -> [t] -> [t] -> [(t,t)]
-- gerarPares _ _ [] = []
-- gerarPares _ [] _ = []
-- gerarPares foo (a:b) (c:d) | (foo a c) = gerarPares foo (a:[]) d ++ (gerarPares foo b d)
-- 	| otherwise = ((a, c):[]) ++ gerarPares foo (a:[]) d ++ gerarPares foo b d

-- Agora recebe como argumento uma função de comparação entre elementos
gerarPares :: (t -> u -> Bool) -> [t] -> [u] -> [(t,u)] 
gerarPares foo l1 l2 = [(a,b) | a <- l1, b <- l2, foo a b]

foo :: String -> String -> Bool
-- if EQUALS return True
foo x y | (x == y) = False
	| otherwise = True

aprovado_ :: (Int, String, Float) -> Bool
aprovado_ (_, y, z) | (z >= 6) = True
	| otherwise = False

aprovados :: [(Int, String, Float)] -> [String]
aprovados x = map getNome (filter aprovado_ x)

aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 [] = []
aprovados2 ( (x, y, z) :b) | (z >= 6) = y : aprovados2 b
	| otherwise = aprovados2 b

main = do
	let list = alunos
	print (aprovados list)
	print (aprovados2 list)
	let list_ = map getNome list
	print (gerarPares foo list_ list_)