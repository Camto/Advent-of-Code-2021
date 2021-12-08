import Data.List

f <- readFile "Speed/as.txt"

ar = map (\(a, b) -> (words a, words b)) $ (read f :: [(String, String)])

d s e idxs = map (\(idx, o) -> if idx `elem` idxs then if o /= "" then intersect o e else e else o) (zip [0..6] s)
addsegs s e = case length e of { 2 -> d s e [2,5] ; 4 -> d s e [1,2,3,5] ; 3 -> d s e [0,2,5] ; 7 -> d s e [0..6] ; _ -> s }

unifystep a = foldl' (\s e -> map (\p -> if p /= e then foldl' (\u i -> delete i u) p e else p) s) a . map head . filter (\q -> length q == (length (q !! 0))) . group $ sort a

unify = until (all ((<= 2) . length)) unifystep

uned = map unify . map (map sort) $ map (\(i, o) -> foldl' addsegs (replicate 7 "") $ i ++ o) ar

you = map (\([q,w,e,r,t,y,u], (a,b)) -> [q,w,[a],r,t,[b],u]) . zip uned . map (\(u, (i, o)) -> let q = head . foldl' intersect (u !! 2) $ filter ((/= 5) . length) (i ++ o) in (head $ delete q (u !! 2), q)) $ zip uned ar
uned = you

you = map (\([q,w,e,r,t,y,u], (a,b)) -> [q,[a],e,[b],t,y,u]) . zip uned . map (\(u, (i, o)) -> let q = head . foldl' intersect (u !! 1) $ filter (not . (`elem` [6,2,3]) . length) (i ++ o) in (head $ delete q (u !! 1), q)) $ zip uned ar
uned = you

you = map (\([q,w,e,r,t,y,u], (a,b)) -> [q,w,e,r,[a],y,[b]]) . zip uned . map (\(u, (i, o)) -> let q = head . foldl' intersect (u !! 4) $ filter (not . (`elem` [2,3,4]) . length) (i ++ o) in (head $ delete q (u !! 4), q)) $ zip uned ar
uned = you

you = map concat uned
uned = you
out = map snd ar

digs = zipWith (\un -> map (sort . map (\wire -> let Just q = elemIndex wire un in q))) uned out

:{
dig2num [2,5] = 1
dig2num [0,1,2,4,5,6] = 0
dig2num [0,2,3,4,6] = 2  
dig2num [0,2,3,5,6] = 3
dig2num [1,2,3,5] = 4  
dig2num [0,1,3,5,6] = 5
dig2num [0,1,3,4,5,6] = 6
dig2num [0,2,5] = 7      
dig2num [0,1,2,3,4,5,6] = 8
dig2num [0,1,2,3,5,6] = 9
:}

sum $ map ((read :: String -> Int) . concat . map (show . dig2num)) digs