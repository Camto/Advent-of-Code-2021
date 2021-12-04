file <- readFile "Speed/th.txt"
ls = lines file
ns = (read::String->[Int]) . (\a->"["++a++"]") $ head ls
arr = tail $ tail ls

boards (a:b:c:d:e:"":xs) = [a,b,c,d,e]:(boards xs)
boards l = [l]

ar = map (map (map (read :: String -> Int) . words)) $ boards arr

import Data.List

rowwon = any (all (< 0))
boardwon b = rowwon b || (rowwon $ transpose b)

mark (bs, n:ns) = (map (map (map (\b -> if b == n then -1 else b))) bs, ns)

snd $ until (\(bs, ns) -> any boardwon bs) mark (ar, ns) -- Just look at the first element left in the number list to figure out the last one placed

done = fst $ until (\(bs, ns) -> any boardwon bs) mark (ar, ns)

Just b =find boardwon done

sum . map (sum . filter (> 0)) $ b

693*39

snd $ until (\(bs, ns) -> all boardwon bs) mark (ar, ns)

done2 = fst $ until (\(bs, ns) -> all boardwon bs) (mark . (\(bs, ns) -> (filter (not . boardwon) bs, ns))) (ar, ns)

b2 = head done2

sum . map (sum . filter (> 0)) $ b2

425*87