import Data.Array
import Control.Monad

roll = [1..3]

makearray = listArray ((0,0,0,0,False), (20,9,20,9,True))

step st = makearray $ do
	p1score <- [0..20]
	p1pos <- [0..9]
	p2score <- [0..20]
	p2pos <- [0..9]
	turn <- [False, True]
	pure $
		if turn
		then
			let p1score' = p1score - p1pos - 1 -- Player's score last turn
			in if p1score' >= 0
				then sum $ do
					r1 <- roll
					r2 <- roll
					r3 <- roll
					let moved = r1 + r2 + r3
					let p1pos' = (p1pos - moved) `mod` 10 -- Player's pos last turn
					pure $ st ! (p1score',p1pos',p2score,p2pos,False)
				else 0
		else
			let p2score' = p2score - p2pos - 1 -- Player's score last turn
			in if p2score' >= 0
				then sum $ do
					r1 <- roll
					r2 <- roll
					r3 <- roll
					let moved = r1 + r2 + r3
					let p2pos' = (p2pos - moved) `mod` 10 -- Player's pos last turn
					pure $ st ! (p1score,p1pos,p2score',p2pos',True)
				else 0

p1wins st = sum $ do
	p1score <- [11..20]
	p1pos <- [0..9]
	p2score <- [0..20]
	p2pos <- [0..9]
	r1 <- roll
	r2 <- roll
	r3 <- roll
	let p1pos' = (p1pos + r1 + r2 + r3) `mod` 10
	guard $ p1score + p1pos' + 1 >= 21
	pure $ st ! (p1score,p1pos,p2score,p2pos,False)

p2wins st = sum $ do
	p1score <- [0..20]
	p1pos <- [0..9]
	p2score <- [11..20]
	p2pos <- [0..9]
	r1 <- roll
	r2 <- roll
	r3 <- roll
	let p2pos' = (p2pos + r1 + r2 + r3) `mod` 10
	guard $ p2score + p2pos' + 1 >= 21
	pure $ st ! (p1score,p1pos,p2score,p2pos,True)

initst p1pos p2pos = (// [((0,p1pos,0,p2pos,False), 1)]) . makearray $ replicate (21*10*21*10*2) 0

part2 p1pos p2pos =
	let
		turns = take 19 . iterate step $ initst p1pos p2pos
		p1wintotal = sum $ map p1wins turns
		p2wintotal = sum $ map p2wins turns
	in max p1wintotal p2wintotal