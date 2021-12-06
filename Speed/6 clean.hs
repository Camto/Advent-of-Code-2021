import Data.List

step [a,b,c,d,e,f,g,h,i] = [b,c,d,e,f,g,h + a,i,a]

nSteps n = (!! n) . iterate step

count a = length . filter (== a)

main = do
	input <- readFile "input.txt"
	let nums = read $ "[" ++ input ++ "]" :: [Integer]
	let fish = map ((flip count) nums) [0..8]
	
	print . sum $ nSteps 80 fish -- Part 1
	print . sum $ nSteps 256 fish -- Part 2