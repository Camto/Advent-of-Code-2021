import Data.List

tri n = n*(n+1) `div` 2
trito x s = tri x - tri (max 0 $ x-s)

inrange (by,ty) n = n >= by && n <= ty

nsteps r n = if n <= 0 then nsteps' r 0 n 0 else nsteps' r 0 (-n-1) (n*2 + 1)
nsteps' r@(by,_) n v s = if n < by then [] else (if inrange r n then (s:) else id) $ nsteps' r (n+v) (v-1) (s+1)

part1 _ (by,_) = tri $ -by-1

part2 xr@(_,bx) yr@(by,_) = length . nub . map snd . concatMap (\yv -> filter (inrange xr . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ nsteps yr yv) $ [by .. -by-1]