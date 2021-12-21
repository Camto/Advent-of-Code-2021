import Data.List
import Data.Maybe

data Player = Player { score :: Int, pos :: Int } deriving (Read, Show)

turn (p1, p2) die =
	let
		(r1, die1) = roll die
		(r2, die2) = roll die1
		(r3, die3) = roll die2
		pos' = (r1 + r2 + r3 + pos p1) `mod` 10
	in ((p2, Player (score p1 + pos' + 1) pos'), die3)

roll die = (die + 1, (die + 1) `mod` 100)

part1 p1pos p2pos =
	let
		st = ((Player 0 p1pos, Player 0 p2pos), 0)
		allturns = iterate (uncurry turn) st
		Just idx = findIndex ((>= 1000) . score . snd . fst) allturns
	in (score . fst . fst $ allturns !! idx) * idx * 3