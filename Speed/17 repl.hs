Ben/PRO/Stu/Advent of Code 2021> cd .\Speed\
Ben/PRO/Stu/Adv/Speed> ghci .\packet.hs
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
[1 of 1] Compiling Main             ( packet.hs, interpreted )
Ok, one module loaded.
*Main> :t sign

<interactive>:1:1: error:
    * Variable not in scope: sign
    * Perhaps you meant `sin' (imported from Prelude)
*Main> sign x = if x > 0 then 1 else if x < 0 then -1 else 0
*Main> map sign [-10..10]
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,1,1,1,1,1,1,1,1,1,1]
*Main> -5 - (-10)
5
*Main> -5 - (-10) + 1
6
*Main> let n = 4 in n*(n-1)`div` 2
6
*Main> let n = 4 in (n*(n-1))`div` 2
6
*Main> tri n = n*(n-1) `div` 2      
*Main> map tri [1..10]
[0,1,3,6,10,15,21,28,36,45]
*Main> tri n = n*(n+1) `div` 2
*Main> map tri [1..10]        
[1,3,6,10,15,21,28,36,45,55]
*Main> part1 r = tri . fromJust . (- 1) $ find (not . willfallinrange r) [1..]      

<interactive>:12:48: error:
    Variable not in scope: willfallinrange :: t -> a0 -> Bool
*Main> willfallinrange r@(by,ty) n v = if n < by then False else if inrange r n then True else willfallinrange r (n+v) (v-1)

<interactive>:13:62: error:
    Variable not in scope: inrange :: (t, b) -> t -> Bool
*Main> inrange (by,ty) n = n >= by && n <= ty
*Main> willfallinrange r@(by,ty) n v = if n < by then False else if inrange r n then True else willfallinrange r (n+v) (v-1)
*Main> part1 r = tri . fromJust . (- 1) $ find (not . willfallinrange r 0 . negate) [1..]

<interactive>:16:1: error:
    * Non type-variable argument
        in the constraint: Num (Maybe t -> Maybe c)
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        part1 :: forall c t.
                 (Integral c, Num t, Num (Maybe t -> Maybe c), Ord t, Enum t) =>
                 (t, t) -> c
*Main> part1 r = tri . fromJust $ find (not . willfallinrange r 0 . negate) [1..]        
*Main> part1 (-10,-5)
66
*Main> rangeof (by,ty) = ty-by+1
*Main> part1 r = tri . (- 1) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]

<interactive>:20:1: error:
    * Non type-variable argument in the constraint: Num (b -> c)
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        part1 :: forall c b.
                 (Integral c, Num b, Num (b -> c), Ord b, Enum b) =>
                 (b, b) -> c
*Main> part1 r = tri . (+ -1) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]

<interactive>:21:17: error:
    The operator `+' [infixl 6] of a section
        must have lower precedence than that of the operand,
          namely prefix `-' [infixl 6]
        in the section: `+ - 1'
*Main> part1 r = tri . (+ (-1)) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]
*Main> part1 r = (- rangeof r) . tri . (+ (-1)) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]

<interactive>:23:55: error:
    * Occurs check: cannot construct the infinite type: b ~ b -> c
      Expected type: Maybe b
        Actual type: Maybe (b -> c)
    * In the second argument of `($)', namely
        `find (not . willfallinrange r 0 . negate) [1 .. ]'
      In the expression:
        (- rangeof r) . tri . (+ (- 1)) . fromJust
          $ find (not . willfallinrange r 0 . negate) [1 .. ]
      In an equation for `part1':
          part1 r
            = (- rangeof r) . tri . (+ (- 1)) . fromJust
                $ find (not . willfallinrange r 0 . negate) [1 .. ]
    * Relevant bindings include
        r :: (b -> c, b -> c) (bound at <interactive>:23:7)
        part1 :: (b -> c, b -> c) -> c (bound at <interactive>:23:1)
*Main> :t rangeof 
rangeof :: Num a => (a, a) -> a
*Main> part1 r = (- (rangeof r)) . tri . (+ (-1)) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]

<interactive>:25:57: error:
    * Occurs check: cannot construct the infinite type: b ~ b -> c
      Expected type: Maybe b
        Actual type: Maybe (b -> c)
    * In the second argument of `($)', namely
        `find (not . willfallinrange r 0 . negate) [1 .. ]'
      In the expression:
        (- (rangeof r)) . tri . (+ (- 1)) . fromJust
          $ find (not . willfallinrange r 0 . negate) [1 .. ]
      In an equation for `part1':
          part1 r
            = (- (rangeof r)) . tri . (+ (- 1)) . fromJust
                $ find (not . willfallinrange r 0 . negate) [1 .. ]
    * Relevant bindings include
        r :: (b -> c, b -> c) (bound at <interactive>:25:7)
        part1 :: (b -> c, b -> c) -> c (bound at <interactive>:25:1)
*Main> part1 r = (+ (negate $ rangeof r)) . tri . (+ (-1)) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]
*Main> part1 (-10,-5)
49
*Main> rangeof (-10,-5)
6
*Main> part1 r = tri . (+ (-1)) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]
*Main> part1 (-10,-5)
55
*Main> part1 r@(by,_) = (+ by) . tri . (+ (-1)) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]
*Main> part1 (-10,-5)
45
*Main> part1 (-97,-63) 
1079
*Main> part1 r@(by,_) = tri . (+ (-2)) . fromJust $ find (not . willfallinrange r 0 . negate) [1..]         
*Main> part1 (-97,-63)
1128
*Main> fromJust $ find (not . willfallinrange (-10,-5) 0 . negate) [1..]                                    
11
*Main> fromJust $ find (not . willfallinrange (-10,-5) 0 . negate . (+ 1)) [1..]
10
*Main> part1 r@(by,_) = [-by-1..1]
*Main> part1 (-10,-5)
[]
*Main> part1 r@(by,_) = [1..-by-1]

<interactive>:40:20: error:
    Variable not in scope: (..-) :: t0 -> t -> a
*Main> part1 r@(by,_) = [1.. -by-1]
*Main> part1 (-10,-5)              
[1,2,3,4,5,6,7,8,9]
*Main> i = (-10,-5)
*Main> part1 i       
[1,2,3,4,5,6,7,8,9]
*Main> part1 r@(by,_) = tri . head $ reverse [1.. -by-1]
*Main> part1 i
45
*Main> part1 (-97,-63)
4656
*Main> part1 r@(by,_) = [by .. -by-1]                      
*Main> part1 i        
[-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9]
*Main> i' = (-97,-63)
*Main> nsteps r n = if n <= 0 then nsteps' r n else n*2 + 1 + nsteps' r (-n-1)

<interactive>:51:29: error:
    Variable not in scope: nsteps' :: t -> p -> p

<interactive>:51:56: error:
    Variable not in scope: nsteps' :: t -> p -> p
*Main> nsteps' r@(by,ty) n v s = if n < by then [] else (if inrange r n then (s:) else id) $ nsteps' r (n-v) (v+1) (s+1) 
*Main> nsteps r n = if n <= 0 then nsteps' r 0 n 0 else nsteps' r 0 (-n-1) (n*2 + 1)
*Main> nsteps i 3
[17]
*Main> nsteps i 0
[4,5]
*Main> nsteps i (-4)
[10]
*Main> nsteps' i 0 (-4) 0
[10]
*Main> i
(-10,-5)
*Main> nsteps' r@(by,ty) n v s = if n < by then [] else (if inrange r n then (s:) else id) $ nsteps' r (n+v) (v-1) (s+1) 
*Main> nsteps r n = if n <= 0 then nsteps' r 0 n 0 else nsteps' r 0 (-n-1) (n*2 + 1)
*Main> nsteps i 3
[9]
*Main> nsteps i 0
[4,5]
*Main> nsteps i (-4)
[2]
*Main> nsteps i 2   
[7]
*Main> part1 r@(by,_) = map (nsteps) [by .. -by-1]   

<interactive>:65:1: error:
    * Non type-variable argument in the constraint: Num (a, a)
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        part1 :: forall a b.
                 (Ord a, Num a, Num (a, a), Enum (a, a)) =>
                 ((a, a), b) -> [a -> [a]]
*Main> part1 r@(by,_) = map (nsteps r) [by .. -by-1]
*Main> part1 i
[[1],[1],[1],[1],[1],[1],[2],[2],[2,3],[3,4],[4,5],[5,6],[7],[9],[10],[12],[14],[16],[18],[20]]
*Main> nsteps r (-100)

<interactive>:68:8: error: Variable not in scope: r :: (a, a)
*Main> nsteps i (-100)
[]
*Main> part1 i
[[1],[1],[1],[1],[1],[1],[2],[2],[2,3],[3,4],[4,5],[5,6],[7],[9],[10],[12],[14],[16],[18],[20]]
*Main> trito x s = tri x - tri (x-s)
*Main> tri (-5)
10
*Main> trito x s = tri x - tri (min 0 x-s)
*Main> min 0 4-5
-5
*Main> min 0 (4-5)
-1
*Main> trito x s = tri x - tri (max 0 $ x-s)
*Main> trito 7 7
28
*Main> tri 7
28
*Main> trito 6 9
21
*Main> tri 6
21
*Main> trito 9 4
30
*Main> 9+8+7+6
30
*Main> part1 x@(tx,bx) y@(by,_) = map (filter (inrange x) . concatMap (\s -> map (\n -> trito n s) [tx..bx]) . nsteps y) [by .. -by-1]
*Main> part1 x i

<interactive>:84:7: error: Variable not in scope: x :: (a, a)
*Main> x=(20,30)
*Main> part1 x i
[[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
*Main> part1 x@(tx,bx) y@(by,_) = length $ concatMap (filter (inrange x) . concatMap (\s -> map (\n -> trito n s) [tx..bx]) . nsteps y) [by .. -by-1]
*Main> part1 x i
66     
*Main> nsteps i 4
[10]   
*Main> trito 7 10
28     
*Main> [-10 .. 10-1]
[-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9]
*Main> concatMap (\s -> map (\n -> trito n s) [20..30]) $ nsteps i 4
[155,165,175,185,195,205,215,225,235,245,255]
*Main> map (\s -> map (\n -> trito n s) [20..30]) $ nsteps i 4      
[[155,165,175,185,195,205,215,225,235,245,255]]
*Main> trito 20 10
155    
*Main> part1 x@(tx,bx) y@(by,_) = length $ concatMap (filter (inrange x) . concatMap (\s -> map (\n -> trito n s) [1..bx]) . nsteps y) [by .. -by-1] 
*Main> part1 x i
119
*Main> part1 x@(tx,bx) y@(by,_) = map (filter (inrange x) . concatMap (\s -> map (\n -> trito n s) [1..bx]) . nsteps y) [by .. -by-1]               
*Main> part1 x i
[[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[20,21,22,23,24,25,26,27,28,29,30],[21,23,25,27,29],[21,23,25,27,29],[21,23,25,27,29,21,24,27,30],[21,24,27,30,22,26,30],[22,26,30,20,25,30],[20,25,30,21,27],[21,28],[21,28],[21,28],[21,28],[21,28],[21,28],[21,28],[21,28]]
*Main> part1 x@(tx,bx) y@(by,_) = map (\yv -> filter (inrange x) . concatMap (\(v -> map (\xv -> trito xv s) [1..bx]) $ (nsteps y yv, yv)) [by .. -by-1]]
<interactive>:99:76: error: parse error on input `,'
*Main> part1 x@(tx,bx) y@(by,_) = map (\yv -> filter (inrange x . fst) . concatMap (\(s, yv) -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ (nsteps y 
yv, yv)) [by .. -by-1]

<interactive>:100:1: error:
    * Non type-variable argument in the constraint: Num (a, b)
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        part1 :: forall a b.
                 (Integral a, Ord b, Num (a, b), Enum (a, b)) =>
                 (a, a) -> ((a, b), (a, b)) -> [[(a, (a, b))]]
*Main> nsteps i 4 
[10]
*Main> nsteps i 2
[7]
*Main> nsteps i 7
[16]
*Main> nsteps i 1
[5,6]
*Main> part1 x@(tx,bx) y@(by,_) = map (\yv -> filter (inrange x . fst) . concatMap (\(s, yv) -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ zip (nsteps y yv) yv) [by .. -by-1]

<interactive>:105:1: error:
    * Non type-variable argument in the constraint: Integral [b]
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        part1 :: forall b.
                 (Ord b, Integral [b]) =>
                 ([b], [b]) -> ([b], [b]) -> [[([b], ([b], b))]]
*Main> part1 x@(tx,bx) y@(by,_) = map (\yv -> filter (inrange x . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) nsteps y yv) [by .. -by-1]

<interactive>:106:67: error:
    * Couldn't match expected type `(a1, b)
                                    -> a1 -> a2 -> [(a -> [a], b1)]'
                  with actual type `[(a -> [a], (a -> [a], a1))]'
    * The function `concatMap' is applied to four arguments,
      but its type `((a -> [a]) -> [(a -> [a], (a -> [a], a1))])
                    -> ((a, a) -> a -> [a]) -> [(a -> [a], (a -> [a], a1))]'
      has only two
      In the second argument of `(.)', namely
        `concatMap
           (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx]) nsteps y
           yv'
      In the expression:
        filter (inrange x . fst)
          . concatMap
              (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx]) nsteps y yv
    * Relevant bindings include
        yv :: a1 (bound at <interactive>:106:34)
        by :: a1 (bound at <interactive>:106:20)
        y :: (a1, b) (bound at <interactive>:106:17)
        bx :: a -> [a] (bound at <interactive>:106:13)
        tx :: a -> [a] (bound at <interactive>:106:10)
        x :: (a -> [a], a -> [a]) (bound at <interactive>:106:7)
        part1 :: (a -> [a], a -> [a])
                 -> (a1, b) -> [a2 -> [(a -> [a], b1)]]
          (bound at <interactive>:106:1)
*Main> part1 x@(tx,bx) y@(by,_) = map (\yv -> filter (inrange x . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ nsteps y yv) [by .. -by-1]
*Main> part1 x i
[[(20,(20,-10)),(21,(21,-10)),(22,(22,-10)),(23,(23,-10)),(24,(24,-10)),(25,(25,-10)),(26,(26,-10)),(27,(27,-10)),(28,(28,-10)),(29,(29,-10)),(30,(30,-10))],[(20,(20,-9)),(21,(21,-9)),(22,(22,-9)),(23,(23,-9)),(24,(24,-9)),(25,(25,-9)),(26,(26,-9)),(27,(27,-9)),(28,(28,-9)),(29,(29,-9)),(30,(30,-9))],[(20,(20,-8)),(21,(21,-8)),(22,(22,-8)),(23,(23,-8)),(24,(24,-8)),(25,(25,-8)),(26,(26,-8)),(27,(27,-8)),(28,(28,-8)),(29,(29,-8)),(30,(30,-8))],[(20,(20,-7)),(21,(21,-7)),(22,(22,-7)),(23,(23,-7)),(24,(24,-7)),(25,(25,-7)),(26,(26,-7)),(27,(27,-7)),(28,(28,-7)),(29,(29,-7)),(30,(30,-7))],[(20,(20,-6)),(21,(21,-6)),(22,(22,-6)),(23,(23,-6)),(24,(24,-6)),(25,(25,-6)),(26,(26,-6)),(27,(27,-6)),(28,(28,-6)),(29,(29,-6)),(30,(30,-6))],[(20,(20,-5)),(21,(21,-5)),(22,(22,-5)),(23,(23,-5)),(24,(24,-5)),(25,(25,-5)),(26,(26,-5)),(27,(27,-5)),(28,(28,-5)),(29,(29,-5)),(30,(30,-5))],[(21,(11,-4)),(23,(12,-4)),(25,(13,-4)),(27,(14,-4)),(29,(15,-4))],[(21,(11,-3)),(23,(12,-3)),(25,(13,-3)),(27,(14,-3)),(29,(15,-3))],[(21,(11,-2)),(23,(12,-2)),(25,(13,-2)),(27,(14,-2)),(29,(15,-2)),(21,(8,-2)),(24,(9,-2)),(27,(10,-2)),(30,(11,-2))],[(21,(8,-1)),(24,(9,-1)),(27,(10,-1)),(30,(11,-1)),(22,(7,-1)),(26,(8,-1)),(30,(9,-1))],[(22,(7,0)),(26,(8,0)),(30,(9,0)),(20,(6,0)),(25,(7,0)),(30,(8,0))],[(20,(6,1)),(25,(7,1)),(30,(8,1)),(21,(6,1)),(27,(7,1))],[(21,(6,2)),(28,(7,2))],[(21,(6,3)),(28,(7,3))],[(21,(6,4)),(28,(7,4))],[(21,(6,5)),(28,(7,5))],[(21,(6,6)),(28,(7,6))],[(21,(6,7)),(28,(7,7))],[(21,(6,8)),(28,(7,8))],[(21,(6,9)),(28,(7,9))]]
*Main> part1 x@(tx,bx) y@(by,_) = map snd . concatMap (\yv -> filter (inrange x . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ 
nsteps y yv) [by .. -by-1]

<interactive>:109:38: error:
    * Couldn't match expected type `a1 -> [(a0, b)]'
                  with actual type `[(a, (a, a))]'
    * Possible cause: `concatMap' is applied to too many arguments
      In the second argument of `(.)', namely
        `concatMap
           (\ yv
              -> filter (inrange x . fst)
                   . concatMap (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx])
                   $ nsteps y yv)
           [by .. - by - 1]'
      In the expression:
        map snd
          . concatMap
              (\ yv
                 -> filter (inrange x . fst)
                      . concatMap (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx])
                      $ nsteps y yv)
              [by .. - by - 1]
      In an equation for `part1':
          part1 x@(tx, bx) y@(by, _)
            = map snd
                . concatMap
                    (\ yv
                       -> filter (inrange x . fst)
                            . concatMap (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx])
                            $ nsteps y yv)
                    [by .. - by - 1]
    * Relevant bindings include
        by :: a (bound at <interactive>:109:20)
        y :: (a, a) (bound at <interactive>:109:17)
        bx :: a (bound at <interactive>:109:13)
        tx :: a (bound at <interactive>:109:10)
        x :: (a, a) (bound at <interactive>:109:7)
        part1 :: (a, a) -> (a, a) -> a1 -> [b]
          (bound at <interactive>:109:1)
*Main> part1 x@(tx,bx) y@(by,_) = concatMap (\yv -> filter (inrange x . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ nsteps y yv) [by .. -by-1]
*Main> part1 x i
[(20,(20,-10)),(21,(21,-10)),(22,(22,-10)),(23,(23,-10)),(24,(24,-10)),(25,(25,-10)),(26,(26,-10)),(27,(27,-10)),(28,(28,-10)),(29,(29,-10)),(30,(30,-10)),(20,(20,-9)),(21,(21,-9)),(22,(22,-9)),(23,(23,-9)),(24,(24,-9)),(25,(25,-9)),(26,(26,-9)),(27,(27,-9)),(28,(28,-9)),(29,(29,-9)),(30,(30,-9)),(20,(20,-8)),(21,(21,-8)),(22,(22,-8)),(23,(23,-8)),(24,(24,-8)),(25,(25,-8)),(26,(26,-8)),(27,(27,-8)),(28,(28,-8)),(29,(29,-8)),(30,(30,-8)),(20,(20,-7)),(21,(21,-7)),(22,(22,-7)),(23,(23,-7)),(24,(24,-7)),(25,(25,-7)),(26,(26,-7)),(27,(27,-7)),(28,(28,-7)),(29,(29,-7)),(30,(30,-7)),(20,(20,-6)),(21,(21,-6)),(22,(22,-6)),(23,(23,-6)),(24,(24,-6)),(25,(25,-6)),(26,(26,-6)),(27,(27,-6)),(28,(28,-6)),(29,(29,-6)),(30,(30,-6)),(20,(20,-5)),(21,(21,-5)),(22,(22,-5)),(23,(23,-5)),(24,(24,-5)),(25,(25,-5)),(26,(26,-5)),(27,(27,-5)),(28,(28,-5)),(29,(29,-5)),(30,(30,-5)),(21,(11,-4)),(23,(12,-4)),(25,(13,-4)),(27,(14,-4)),(29,(15,-4)),(21,(11,-3)),(23,(12,-3)),(25,(13,-3)),(27,(14,-3)),(29,(15,-3)),(21,(11,-2)),(23,(12,-2)),(25,(13,-2)),(27,(14,-2)),(29,(15,-2)),(21,(8,-2)),(24,(9,-2)),(27,(10,-2)),(30,(11,-2)),(21,(8,-1)),(24,(9,-1)),(27,(10,-1)),(30,(11,-1)),(22,(7,-1)),(26,(8,-1)),(30,(9,-1)),(22,(7,0)),(26,(8,0)),(30,(9,0)),(20,(6,0)),(25,(7,0)),(30,(8,0)),(20,(6,1)),(25,(7,1)),(30,(8,1)),(21,(6,1)),(27,(7,1)),(21,(6,2)),(28,(7,2)),(21,(6,3)),(28,(7,3)),(21,(6,4)),(28,(7,4)),(21,(6,5)),(28,(7,5)),(21,(6,6)),(28,(7,6)),(21,(6,7)),(28,(7,7)),(21,(6,8)),(28,(7,8)),(21,(6,9)),(28,(7,9))]
*Main> part1 x@(tx,bx) y@(by,_) = map snd concatMap (\yv -> filter (inrange x . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ nsteps y yv) $ [by .. -by-1]

<interactive>:112:28: error:
    * Couldn't match expected type `(a -> [(a, (a, a))]) -> [a] -> t'
                  with actual type `[b1]'
    * The function `map' is applied to three arguments,
      but its type `((a1, b1) -> b1) -> [(a1, b1)] -> [b1]' has only two
      In the expression:
        map
          snd concatMap
          (\ yv
             -> filter (inrange x . fst)
                  . concatMap (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx])
                  $ nsteps y yv)
      In the expression:
        map
          snd concatMap
          (\ yv
             -> filter (inrange x . fst)
                  . concatMap (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx])
                  $ nsteps y yv)
          $ [by .. - by - 1]
    * Relevant bindings include
        by :: a (bound at <interactive>:112:20)
        y :: (a, a) (bound at <interactive>:112:17)
        bx :: a (bound at <interactive>:112:13)
        tx :: a (bound at <interactive>:112:10)
        x :: (a, a) (bound at <interactive>:112:7)
        part1 :: (a, a) -> (a, a) -> t (bound at <interactive>:112:1)

<interactive>:112:36: error:
    * Couldn't match expected type `[(a1, b1)]'
                  with actual type `(a0 -> [b0]) -> t0 a0 -> [b0]'
    * Probable cause: `concatMap' is applied to too few arguments
      In the second argument of `map', namely `concatMap'
      In the expression:
        map
          snd concatMap
          (\ yv
             -> filter (inrange x . fst)
                  . concatMap (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx])
                  $ nsteps y yv)
      In the expression:
        map
          snd concatMap
          (\ yv
             -> filter (inrange x . fst)
                  . concatMap (\ s -> map (\ xv -> (trito xv s, (xv, yv))) [1 .. bx])
                  $ nsteps y yv)
          $ [by .. - by - 1]
*Main> part1 x@(tx,bx) y@(by,_) = map snd . concatMap (\yv -> filter (inrange x . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ 
nsteps y yv) $ [by .. -by-1]
*Main> part1 x i
[(20,-10),(21,-10),(22,-10),(23,-10),(24,-10),(25,-10),(26,-10),(27,-10),(28,-10),(29,-10),(30,-10),(20,-9),(21,-9),(22,-9),(23,-9),(24,-9),(25,-9),(26,-9),(27,-9),(28,-9),(29,-9),(30,-9),(20,-8),(21,-8),(22,-8),(23,-8),(24,-8),(25,-8),(26,-8),(27,-8),(28,-8),(29,-8),(30,-8),(20,-7),(21,-7),(22,-7),(23,-7),(24,-7),(25,-7),(26,-7),(27,-7),(28,-7),(29,-7),(30,-7),(20,-6),(21,-6),(22,-6),(23,-6),(24,-6),(25,-6),(26,-6),(27,-6),(28,-6),(29,-6),(30,-6),(20,-5),(21,-5),(22,-5),(23,-5),(24,-5),(25,-5),(26,-5),(27,-5),(28,-5),(29,-5),(30,-5),(11,-4),(12,-4),(13,-4),(14,-4),(15,-4),(11,-3),(12,-3),(13,-3),(14,-3),(15,-3),(11,-2),(12,-2),(13,-2),(14,-2),(15,-2),(8,-2),(9,-2),(10,-2),(11,-2),(8,-1),(9,-1),(10,-1),(11,-1),(7,-1),(8,-1),(9,-1),(7,0),(8,0),(9,0),(6,0),(7,0),(8,0),(6,1),(7,1),(8,1),(6,1),(7,1),(6,2),(7,2),(6,3),(7,3),(6,4),(7,4),(6,5),(7,5),(6,6),(7,6),(6,7),(7,7),(6,8),(7,8),(6,9),(7,9)]
*Main> part1 x@(tx,bx) y@(by,_) = length . map snd . concatMap (\yv -> filter (inrange x . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ nsteps y yv) $ [by .. -by-1]
*Main> part1 x i
119
*Main> act=[(23,-10),(25,-9),(27,-5),(29,-6),(22,-6),(21,-7),(9,0),(27,-7),(24,-5),(25,-7),(26,-6),(25,-5),(6,8),(11,-2),(20,-5),(29,-10),(6,3),(28,-7)2(,6,1)1)-3-,(]
*Main> part1 x@(tx,bx) y@(by,_) = map snd . concatMap (\yv -> filter (inrange x . fst) . concatMap (\s -> map (\xv -> (trito xv s, (xv, yv))) [1..bx]) $ 
nsteps y yv) $ [by .. -by-1]
*Main> no=part1 x i
*Main> filter (not (`elem` act)) no

<interactive>:120:9: error:
    * Couldn't match expected type `(a, a) -> Bool'
                  with actual type `Bool'
    * Possible cause: `not' is applied to too many arguments
      In the first argument of `filter', namely `(not (`elem` act))'
      In the expression: filter (not (`elem` act)) no
      In an equation for `it': it = filter (not (`elem` act)) no
    * Relevant bindings include
        it :: [(a, a)] (bound at <interactive>:120:1)

<interactive>:120:14: error:
    * Couldn't match expected type `Bool'
                  with actual type `(a0, b0) -> Bool'
    * In the first argument of `not', namely `(`elem` act)'
      In the first argument of `filter', namely `(not (`elem` act))'
      In the expression: filter (not (`elem` act)) no
*Main> filter (not . (`elem` act)) no
[]
*Main> filter (not . (`elem` no)) act 
[]
*Main> length no
119
*Main> length $ nub no
112
*Main> part1 (241,273) i'
[(241,-97),(242,-97),(243,-97),(244,-97),(245,-97),(246,-97),(247,-97),(248,-97),(249,-97),(250,-97),(251,-97),(252,-97),(253,-97),(254,-97),(255,-97),(256,-97),(257,-97),(258,-97),(259,-97),(260,-97),(261,-97),(262,-97),(263,-97),(264,-97),(265,-97),(266,-97),(267,-97),(268,-97),(269,-97),(270,-97),(271,-97),(272,-97),(273,-97),(241,-96),(242,-96),(243,-96),(244,-96),(245,-96),(246,-96),(247,-96),(248,-96),(249,-96),(250,-96),(251,-96),(252,-96),(253,-96),(254,-96),(255,-96),(256,-96),(257,-96),(258,-96),(259,-96),(260,-96),(261,-96),(262,-96),(263,-96),(264,-96),(265,-96),(266,-96),(267,-96),(268,-96),(269,-96),(270,-96),(271,-96),(272,-96),(273,-96),(241,-95),(242,-95),(243,-95),(244,-95),(245,-95),(246,-95),(247,-95),(248,-95),(249,-95),(250,-95),(251,-95),(252,-95),(253,-95),(254,-95),(255,-95),(256,-95),(257,-95),(258,-95),(259,-95),(260,-95),(261,-95),(262,-95),(263,-95),(264,-95),(265,-95),(266,-95),(267,-95),(268,-95),(269,-95),(270,-95),(271,-95),(272,-95),(273,-95),(241,-94),(242,-94),(243,-94),(244,-94),(245,-94),(246,-94),(247,-94),(248,-94),(249,-94),(250,-94),(251,-94),(252,-94),(253,-94),(254,-94),(255,-94),(256,-94),(257,-94),(258,-94),(259,-94),(260,-94),(261,-94),(262,-94),(263,-94),(264,-94),(265,-94),(266,-94),(267,-94),(268,-94),(269,-94),(270,-94),(271,-94),(272,-94),(273,-94),(241,-93),(242,-93),(243,-93),(244,-93),(245,-93),(246,-93),(247,-93),(248,-93),(249,-93),(250,-93),(251,-93),(252,-93),(253,-93),(254,-93),(255,-93),(256,-93),(257,-93),(258,-93),(259,-93),(260,-93),(261,-93),(262,-93),(263,-93),(264,-93),(265,-93),(266,-93),(267,-93),(268,-93),(269,-93),(270,-93),(271,-93),(272,-93),(273,-93),(241,-92),(242,-92),(243,-92),(244,-92),(245,-92),(246,-92),(247,-92),(248,-92),(249,-92),(250,-92),(251,-92),(252,-92),(253,-92),(254,-92),(255,-92),(256,-92),(257,-92),(258,-92),(259,-92),(260,-92),(261,-92),(262,-92),(263,-92),(264,-92),(265,-92),(266,-92),(267,-92),(268,-92),(269,-92),(270,-92),(271,-92),(272,-92),(273,-92),(241,-91),(242,-91),(243,-91),(244,-91),(245,-91),(246,-91),(247,-91),(248,-91),(249,-91),(250,-91),(251,-91),(252,-91),(253,-91),(254,-91),(255,-91),(256,-91),(257,-91),(258,-91),(259,-91),(260,-91),(261,-91),(262,-91),(263,-91),(264,-91),(265,-91),(266,-91),(267,-91),(268,-91),(269,-91),(270,-91),(271,-91),(272,-91),(273,-91),(241,-90),(242,-90),(243,-90),(244,-90),(245,-90),(246,-90),(247,-90),(248,-90),(249,-90),(250,-90),(251,-90),(252,-90),(253,-90),(254,-90),(255,-90),(256,-90),(257,-90),(258,-90),(259,-90),(260,-90),(261,-90),(262,-90),(263,-90),(264,-90),(265,-90),(266,-90),(267,-90),(268,-90),(269,-90),(270,-90),(271,-90),(272,-90),(273,-90),(241,-89),(242,-89),(243,-89),(244,-89),(245,-89),(246,-89),(247,-89),(248,-89),(249,-89),(250,-89),(251,-89),(252,-89),(253,-89),(254,-89),(255,-89),(256,-89),(257,-89),(258,-89),(259,-89),(260,-89),(261,-89),(262,-89),(263,-89),(264,-89),(265,-89),(266,-89),(267,-89),(268,-89),(269,-89),(270,-89),(271,-89),(272,-89),(273,-89),(241,-88),(242,-88),(243,-88),(244,-88),(245,-88),(246,-88),(247,-88),(248,-88),(249,-88),(250,-88),(251,-88),(252,-88),(253,-88),(254,-88),(255,-88),(256,-88),(257,-88),(258,-88),(259,-88),(260,-88),(261,-88),(262,-88),(263,-88),(264,-88),2 
65,-88),(266,-88),(267,-88),(268,-88),(269,-88),(270,-88),(271,-88),(272,-88),(273,-88),(241,-87),(242,-87),(243,-87),(Interrupted.
*Main> length . nub $ part1 (241,273) i'
1908
*Main> length . nub $ part1 x i         
112
*Main>