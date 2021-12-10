import Data.List
import Data.Either
import Data.Maybe
import Control.Monad
import Data.Bifunctor

pair q r = q:r:"" `elem` ["()", "[]", "{}", "<>"]

part1Value q = case q of
	')' -> 3
	']' -> 57
	'}' -> 1197
	'>' -> 25137

part2Value q = fromJust $ elemIndex q " ([{<"

part2CalcScore = foldl' (\score q -> score * 5 + part2Value q) 0

median ls = ls !! (length ls `div` 2)

{-
foldM with Either means it'll fold until
- the loop returns with Left at any point, in which case it stops folding immediately returning that value
- or it has folded through the entire Foldable, in which case it'll return the final value, which has to be a Right

In this case, Left means the line was corrupted, and the foldM returns early with the score of that line
And Right is the stack as it's folding, which if the line was incomplete will be returned

second part2CalcScore just evaluates part2CalcScore if the result is Right
-}
getScore :: String -> Either Int Int
getScore = second part2CalcScore . foldM loop []
	where loop stack q =
		if q `elem` "([{<" then
			Right $ q:stack
		else if pair (head stack) q then
			Right $ tail stack
		else
			Left $ part1Value q

main = do
	input <- lines <$> readFile "input.txt"
	
	let scores = map getScore input
	
	print . sum $ lefts scores -- Part 1
	print . median . sort $ rights scores -- Part 2