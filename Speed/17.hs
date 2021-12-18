import Data.List

type Range = (Int, Int)

tri :: Int -> Int
tri n = n*(n+1) `div` 2

triSteps :: Int -> Int -> Int
triSteps steps n = tri n - tri (max 0 $ n-steps)

inRange :: Range -> Int -> Bool
inRange (lower,upper) n = n >= lower && n <= upper

nSteps :: Range -> Int -> [Int]
nSteps yRange yv =
	if yv <= 0
	then nSteps' yRange 0 yv
	else map ((yv*2 + 1) +) $ nSteps' yRange 0 (-yv-1)

nSteps' :: Range -> Int -> Int -> [Int]
nSteps' yRange@(by,_) yPos yv =
	(\(steps, _, _, _) -> steps) $ until
		(\(_, yPos, _, _) -> yPos < by)
		(\(steps, yPos, yv, nSteps) ->
			let steps' = if inRange yRange yPos then nSteps:steps else steps
			in (steps', yPos+yv, yv-1, nSteps+1))
		([], yPos, yv, 0)

xvReachesInSteps :: Range -> Int -> Int -> Bool
xvReachesInSteps xRange steps = inRange xRange . triSteps steps

findXvsMatchingYv :: Range -> Range -> Int -> [Int]
findXvsMatchingYv xRange@(_,bx) yRange yv =
	concatMap (\steps -> filter (xvReachesInSteps xRange steps) [1..bx]) $
		nSteps yRange yv

part1 _ (by,_) = tri $ -by-1

part2 xRange yRange@(by,_) = length . concatMap (nub . findXvsMatchingYv xRange yRange) $ [by .. -by-1]