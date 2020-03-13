was_aproved :: Float -> String
was_aproved x | (x >= 6) = "aproved"
	| otherwise = "not aproved"

main = do
	grade_str <- getLine
	let grade = (read grade_str :: Float)
	print("With grade " ++ grade_str ++ ", you were " ++ (was_aproved grade) ++ ".")
