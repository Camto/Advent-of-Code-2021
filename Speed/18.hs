import Data.List

{-
Input is to be parsed externally doing these regexes in order, repeating the first one as many times as possible.

\[([^,]*),([^,]*)\] --> (Pair $1 $2)
\d+ --> (Num $0)
\n --> , 
^ --> [
$ --> ]
-}

data Snail = Pair Snail Snail | Num Int deriving (Read, Show, Eq)

fromnum (Num n) = n

addleftmost n (Pair l r) = Pair (addleftmost n l) r
addleftmost n (Num m) = Num $ n + m

addrightmost n (Pair l r) = Pair l $ addrightmost n r
addrightmost n (Num m) = Num $ n + m

explode = explode' 0

explode' depth (Pair l r) =
	if depth == 4
	then Just (Num 0, fromnum l, fromnum r)
	else
		case explode' (depth + 1) l of
			Just (l', ln, rn) -> Just (Pair l' $ addleftmost rn r, ln, 0)
			Nothing ->
				case explode' (depth + 1) r of
					Just (r', ln, rn) -> Just (Pair (addrightmost ln l) r', 0, rn)
					Nothing -> Nothing 

explode' _ n = Nothing

split (Num n) = if n >= 10 then Just $ Pair (Num $ n `div` 2) (Num $ (n+1) `div` 2) else Nothing
split (Pair l r) =
	case split l of
		Just l' -> Just $ Pair l' r
		Nothing ->
			case split r of
				Just r' -> Just $ Pair l r'
				Nothing -> Nothing

reduce n = case explode n of
	Just (n', _, _) -> reduce n'
	Nothing -> case split n of
		Just n' -> reduce n'
		Nothing -> n

magnitude (Num n) = n
magnitude (Pair l r) = 3*(magnitude l) + 2*(magnitude r)

part1 = magnitude . foldl1' (\l r -> reduce $ Pair l r)

part2 ns = maximum [max (magnitude . reduce $ Pair l r) (magnitude . reduce $ Pair r l) | l <- ns, r <- ns, l /= r]

main = do
	input <- read <$> readFile "input.txt" :: IO [Snail]
	print $ part1 input
	print $ part2 input