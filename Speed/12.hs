import Data.List
import Data.Maybe
import Data.Char

findlocsfrom loc = map snd . filter ((== loc) . fst)

nomorethan2small =
	all ((< 2) . length) .
	group . sort .
	filter (isLower . head)

destvalid path e =
	isUpper (head e) ||
	not (e `elem` path) ||
	(nomorethan2small path && e /= "start") -- Remove for part 1

step arr path@(loc:_) = if loc /= "end"
	then
		map (:path) .
		filter (destvalid path) $
		findlocsfrom loc arr
	else [path]

stepall arr = concatMap (step arr)

solve arr =
	let
		allsteps = iterate (stepall arr) [["start"]]
		stepandprevious = zip allsteps $ tail allsteps
	in length . fst . fromJust . find (uncurry (==)) $ stepandprevious

first2andswapped [a, b] = [(a, b), (b, a)]

main = do
	-- Must first replace dashes by spaces in input file because I can't be bothered
	arr <- concatMap (first2andswapped . words) . lines <$> readFile "input.txt"
	print $ solve arr