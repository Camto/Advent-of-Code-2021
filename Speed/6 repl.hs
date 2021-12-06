Ben/PRO/Stu/Advent of Code 2021> ghci
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
Prelude> s = "1 2 1 1 1 1 1 1 2 1 3 1 1 1 1 3 1 1 1 5 1 1 1 4 5 1 1 1 3 4 1 1 1 1 1 1 1 5 1 4 1 1 1 1 1 1 1 5 1 3 1 3 1 1 1 5 1 1 1 1 1 5 4 1 2 4 4 1 1 1 1 1    1  1 3  11  111 111  1  2514"
Prelude> s
"1 2 1 1 1 1 1 1 2 1 3 1 1 1 1 3 1 1 1 5 1 1 1 4 5 1 1 1 3 4 1 1 1 1 1 1 1 5 1 4 1 1 1 1 1 1 1 5 1 3 1 3 1 1 1 5 1 1 1 1 1 5 4 1 2 4 4 1 1 1 1 1 5 1 1 1 1 1 5 4 3 1 1 1 1 1 1 1 5 1 3 1 4 1 1 3 1 1 1 1 1 1 2 1 4 1 3 1 1 1 1 1 5 1 1 1 2 1 1 1 1 2 1 1 1 1 4 1 3 1 1 1 1 1 1 1 1 5 1 1 4 1 1 1 1 1 3 1 3 3 1 1 1 2 1 1 1 1 1 1 1 1 1 5 1 1 1 1 5 1 1 1 1 2 1 1 1 4 1 1 1 2 3 1 1 1 1 1 1 1 1 2 1 1 1 2 3 1 2 1 1 5 4 1 1 2 1 1 1 3 1 4 1 1 1 1 3 1 2 5 1 1 1 5 1 1 1 1 1 4 1 1 4 1 1 1 2 2 2 2 4 3 1 1 3 1 1 1 1 1 1 2 2 1 1 4 2 1 4 1 1 1 1 1 5 1 1 4 2 1 1 2 5 4 2 1 1 1 1 4 2 3 5 2 1 5 1 3 1 1 5 1 1 4 5 1 1 1 1 4"
Prelude> arr = words s
Prelude> arr
["1","2","1","1","1","1","1","1","2","1","3","1","1","1","1","3","1","1","1","5","1","1","1","4","5","1","1","1","3","4","1","1","1","1","1","1","1","5","1","4","1","1","1","1","1","1","1","5","1","3","1","3","1","1","1","5","1","1","1","1","1","5","4","1","2","4","4","1","1","1","1","1","5","1","1","1","1","1","5","4","3","1","1","1","1","1","1","1","5","1","3","1","4","1","1","3","1","1","1","1","1","1","2","1","4","1","3","1","1","1","1","1","5","1","1","1","2","1","1","1","1","2","1","1","1","1","4","1","3","1","1","1","1","1","1","1","1","5","1","1","4","1","1","1","1","1","3","1","3","3","1","1","1","2","1","1","1","1","1","1","1","1","1","5","1","1","1","1","5","1","1","1","1","2","1","1","1","4","1","1","1","2","3","1","1","1","1","1","1","1","1","2","1","1","1","2","3","1","2","1","1","5","4","1","1","2","1","1","1","3","1","4","1","1","1","1","3","1","2","5","1","1","1","5","1","1","1","1","1","4","1","1","4","1","1","1","2","2","2","2","4","3","1","1","3","1","1","1","1","1","1","2","2","1","1","4","2","1","4","1","1","1","1","1","5","1","1","4","2","1","1","2","5","4","2","1","1","1","1","4","2","3","5","2","1","5","1","3","1","1","5","1","1","4","5","1","1","1","1","4"]
Prelude> ar = map (read::String->Int) arr
Prelude> arr = ar
Prelude> arr
[1,2,1,1,1,1,1,1,2,1,3,1,1,1,1,3,1,1,1,5,1,1,1,4,5,1,1,1,3,4,1,1,1,1,1,1,1,5,1,4,1,1,1,1,1,1,1,5,1,3,1,3,1,1,1,5,1,1,1,1,1,5,4,1,2,4,4,1,1,1,1,1,5,1,1,1,1,1,5,4,3,1,1,1,1,1,1,1,5,1,3,1,4,1,1,3,1,1,1,1,1,1,2,1,4,1,3,1,1,1,1,1,5,1,1,1,2,1,1,1,1,2,1,1,1,1,4,1,3,1,1,1,1,1,1,1,1,5,1,1,4,1,1,1,1,1,3,1,3,3,1,1,1,2,1,1,1,1,1,1,1,1,1,5,1,1,1,1,5,1,1,1,1,2,1,1,1,4,1,1,1,2,3,1,1,1,1,1,1,1,1,2,1,1,1,2,3,1,2,1,1,5,4,1,1,2,1,1,1,3,1,4,1,1,1,1,3,1,2,5,1,1,1,5,1,1,1,1,1,4,1,1,4,1,1,1,2,2,2,2,4,3,1,1,3,1,1,1,1,1,1,2,2,1,1,4,2,1,4,1,1,1,1,1,5,1,1,4,2,1,1,2,5,4,2,1,1,1,1,4,2,3,5,2,1,5,1,3,1,1,5,1,1,4,5,1,1,1,1,4]
Prelude> step a = let d = map (- 1) a in (map (\n -> if n == -1 then 6 else n) d) ++ replicate (length . filter (==0) d) 8

<interactive>:8:14: error:
    * Non type-variable argument in the constraint: Num (a0 -> b)
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        d :: forall b. Num (a0 -> b) => [b]
      In the expression:
        let d = map (- 1) a
        in
          (map (\ n -> if n == - 1 then 6 else n) d)
            ++ replicate (length . filter (== 0) d) 8
      In an equation for `step':
          step a
            = let d = map (- 1) a
              in
                (map (\ n -> if n == - 1 then 6 else n) d)
                  ++ replicate (length . filter (== 0) d) 8

<interactive>:8:88: error:
    * Couldn't match expected type `Int' with actual type `a1 -> Int'
    * Probable cause: `(.)' is applied to too few arguments
      In the first argument of `replicate', namely
        `(length . filter (== 0) d)'
      In the second argument of `(++)', namely
        `replicate (length . filter (== 0) d) 8'
      In the expression:
        (map (\ n -> if n == - 1 then 6 else n) d)
          ++ replicate (length . filter (== 0) d) 8

<interactive>:8:97: error:
    * Couldn't match expected type `a1 -> t0 a0'
                  with actual type `[a2]'
    * Possible cause: `filter' is applied to too many arguments
      In the second argument of `(.)', namely `filter (== 0) d'
      In the first argument of `replicate', namely
        `(length . filter (== 0) d)'
      In the second argument of `(++)', namely
        `replicate (length . filter (== 0) d) 8'
Prelude> import Data.List
Prelude Data.List> step a = let d = map (- 1) a in (map (\n -> if n == -1 then 6 else n) d) ++ replicate (length . filter (==0) d) 8

<interactive>:10:14: error:
    * Non type-variable argument in the constraint: Num (a0 -> b)
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        d :: forall b. Num (a0 -> b) => [b]
      In the expression:
        let d = map (- 1) a
        in
          (map (\ n -> if n == - 1 then 6 else n) d)
            ++ replicate (length . filter (== 0) d) 8
      In an equation for `step':
          step a
            = let d = map (- 1) a
              in
                (map (\ n -> if n == - 1 then 6 else n) d)
                  ++ replicate (length . filter (== 0) d) 8

<interactive>:10:88: error:
    * Couldn't match expected type `Int' with actual type `a1 -> Int'
    * Probable cause: `(.)' is applied to too few arguments
      In the first argument of `replicate', namely
        `(length . filter (== 0) d)'
      In the second argument of `(++)', namely
        `replicate (length . filter (== 0) d) 8'
      In the expression:
        (map (\ n -> if n == - 1 then 6 else n) d)
          ++ replicate (length . filter (== 0) d) 8

<interactive>:10:97: error:
    * Couldn't match expected type `a1 -> t0 a0'
                  with actual type `[a2]'
    * Possible cause: `filter' is applied to too many arguments
      In the second argument of `(.)', namely `filter (== 0) d'
      In the first argument of `replicate', namely
        `(length . filter (== 0) d)'
      In the second argument of `(++)', namely
        `replicate (length . filter (== 0) d) 8'
Prelude Data.List> step a = let d = map (- 1) a in (map (\n -> if n < 0 then 6 else n) d) ++ replicate (length . filter (==0) d) 8  

<interactive>:11:14: error:
    * Non type-variable argument in the constraint: Num (a0 -> b)
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        d :: forall b. Num (a0 -> b) => [b]
      In the expression:
        let d = map (- 1) a
        in
          (map (\ n -> if n < 0 then 6 else n) d)
            ++ replicate (length . filter (== 0) d) 8
      In an equation for `step':
          step a
            = let d = map (- 1) a
              in
                (map (\ n -> if n < 0 then 6 else n) d)
                  ++ replicate (length . filter (== 0) d) 8

<interactive>:11:86: error:
    * Couldn't match expected type `Int' with actual type `a1 -> Int'
    * Probable cause: `(.)' is applied to too few arguments
      In the first argument of `replicate', namely
        `(length . filter (== 0) d)'
      In the second argument of `(++)', namely
        `replicate (length . filter (== 0) d) 8'
      In the expression:
        (map (\ n -> if n < 0 then 6 else n) d)
          ++ replicate (length . filter (== 0) d) 8

<interactive>:11:95: error:
    * Couldn't match expected type `a1 -> t0 a0'
                  with actual type `[a2]'
    * Possible cause: `filter' is applied to too many arguments
      In the second argument of `(.)', namely `filter (== 0) d'
      In the first argument of `replicate', namely
        `(length . filter (== 0) d)'
      In the second argument of `(++)', namely
        `replicate (length . filter (== 0) d) 8'
Prelude Data.List> :t map (- 1)
map (- 1) :: Num (a -> b) => [a] -> [b]
Prelude Data.List> :t map (1 -)
map (1 -) :: Num b => [b] -> [b]
Prelude Data.List> step a = let d = map (+ -1) a in (map (\n -> if n < 0 then 6 else n) d) ++ replicate (length . filter (==0) d) 8

<interactive>:14:22: error:
    The operator `+' [infixl 6] of a section
        must have lower precedence than that of the operand,
          namely prefix `-' [infixl 6]
        in the section: `+ - 1'
Prelude Data.List> step a = let d = map (+ (-1)) a in (map (\n -> if n < 0 then 6 else n) d) ++ replicate (length . filter (==0) d) 8

<interactive>:15:89: error:
    * Couldn't match expected type `Int' with actual type `a1 -> Int'
    * Probable cause: `(.)' is applied to too few arguments
      In the first argument of `replicate', namely
        `(length . filter (== 0) d)'
      In the second argument of `(++)', namely
        `replicate (length . filter (== 0) d) 8'
      In the expression:
        (map (\ n -> if n < 0 then 6 else n) d)
          ++ replicate (length . filter (== 0) d) 8

<interactive>:15:98: error:
    * Couldn't match expected type `a1 -> t0 a0' with actual type `[a]'
    * Possible cause: `filter' is applied to too many arguments
      In the second argument of `(.)', namely `filter (== 0) d'
      In the first argument of `replicate', namely
        `(length . filter (== 0) d)'
      In the second argument of `(++)', namely
        `replicate (length . filter (== 0) d) 8'
    * Relevant bindings include
        d :: [a] (bound at <interactive>:15:14)
        a :: [a] (bound at <interactive>:15:6)
        step :: [a] -> [a] (bound at <interactive>:15:1)
Prelude Data.List> step a = let d = map (+ (-1)) a in (map (\n -> if n < 0 then 6 else n) d) ++ replicate (length $ filter (==0) d) 8
Prelude Data.List> :t step
step :: (Ord a, Num a) => [a] -> [a]
Prelude Data.List> step [3,4,3,1,2]
[2,3,2,0,1,8]
Prelude Data.List> step a = let d = map (+ (-1)) a in (map (\n -> if n < 0 then 6 else n) d) ++ replicate (length $ filter (==(-1)) d) 8
Prelude Data.List> step [3,4,3,1,2]
[2,3,2,0,1]
Prelude Data.List> step $ step [3,4,3,1,2]
[1,2,1,6,0,8]
Prelude Data.List> iterate step arr
[[1,2,1,1,1,1,1,1,2,1,3,1,1,1,1,3,1,1,1,5,1,1,1,4,5,1,1,1,3,4,1,1,1,1,1,1,1,5,1,4,1,1,1,1,1,1,1,5,1,3,1,3,1,1,1,5,1,1,1,1,1,5,4,1,2,4,4,1,1,1,1,1,5,1,1,1,1,1,5,4,3,1,1,1,1,1,1,1,5,1,3,1,4,1,1,3,1,1,1,1,1,1,2,1,4,1,3,1,1,1,1,1,5,1,1,1,2,1,1,1,1,2,1,1,1,1,4,1,3,1,1,1,1,1,1,1,1,5,1,1,4,1,1,1,1,1,3,1,3,3,1,1,1,2,1,1,1,1,1,1,1,1,1,5,1,1,1,1,5,1,1,1,1,2,1,1,1,4,1,1,1,2,3,1,1,1,1,1,1,1,1,2,1,1,1,2,3,1,2,1,1,5,4,1,1,2,1,1,1,3,1,4,1,1,1,1,3,1,2,5,1,1,1,5,1,1,1,1,1,4,1,1,4,1,1,1,2,2,2,2,4,3,1,1,3,1,1,1,1,1,1,2,2,1,1,4,2,1,4,1,1,1,1,1,5,1,1,4,2,1,1,2,5,4,2,1,1,1,1,4,2,3,5,2,1,5,1,3,1,1,5Interrupted.
Prelude Data.List> length . take 80 $ iterate step arr
80
Prelude Data.List> iterate step [3,4,3,1,2]
[[3,4,3,1,2],[2,3,2,0,1],[1,2,1,6,0,8],[0,1,0,5,6,7,8],[6,0,6,4,5,6,7,8,8],[5,6,5,3,4,5,6,7,7,8],[4,5,4,2,3,4,5,6,6,7],[3,4,3,1,2,3,4,5,5,6],[2,3,2,0,1,2,3,4,4,5],[1,2,1,6,0,1,2,3,3,4,8],[0,1,0,5,6,0,1,2,2,3,7,8],[6,0,6,4,5,6,0,1,1,2,6,7,8,8,8],[5,6,5,3,4,5,6,0,0,1,5,6,7,7,7,8,8],[4,5,4,2,3,4,5,6,6,0,4,5,6,6,6,7,7,8,8],[3,4,3,1,2,3,4,5,5,6,3,4,5,5,5,6,6,7,7,8],[2,3,2,0,1,2,3,4,4,5,2,3,4,4,4,5,5,6,6,7],[1,2,1,6,0,1,2,3,3,4,1,2,3,3,3,4,4,5,5,6,8],[0,1,0,5,6,0,1,2,2,3,0,1,2,2,2,3,3,4,4,5,7,8],[6,0,6,4,5,6,0,1,1,2,6,0,1,1,1,2,2,3,3,4,6,7,8,8,8,8],[5,6,5,3,4,5,6,0,0,1,5,6,0,0,0,1,1,2,2,3,5,6,7,7,7,7,8,8,8],[4,5,4,2,3,4,5,6,6,0,4,5,6,6,6,0,0,1,1,2,4,5,6,6,6,6,7,7,7,8,8,8,8,8],[3,4,3,1,2,3,4,5,5,6,3,4,5,5,5,6,6,0,0,1,3,4,5,5,5,5,6,6,6,7,7,7,7,7,8,8,8],[2,3,2,0,1,2,3,4,4,5,2,3,4,4,4,5,5,6,6,0,2,3,4,4,4,4,5,5,5,6,6,6,6,6,7,7,7,8,8],[1,2,1,6,0,1,2,3,3,4,1,2,3,3,3,4,4,5,5,6,1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,7,7,8,8],[0,1,0,5,6,0,1,2,2,3,0,1,2,2,2,3,3,4,4,5,0,1,2,2,2,2,3,3,3,4,4,4,4,4,5,5,5,6,6,7,7,8],[6,0,6,4,5,6,0,1,1,2,6,0,1,1,1,2,2,3,3,4,6,0,1,1,1,1,2,2,2,3,3,3,3,3,4,4,4,5,5,6,6,7,8,8,8,8,8],[5,6,5,3,4,5,6,0,0,1,5,6,0,0,0,1,1,2,2,3,5,6,0,0,0,0,1,1,1,2,2,2,2,2,3,3,3,4,4,5,5,6,7,7,7,7,7,8,8,8,8],[4,5,4,2,3,4,5,6,6,0,4,5,6,6,6,0,0,1,1,2,4,5,6,6,6,6,0,0,0,1,1,1,1,1,2,2,2,3,3,4,4,5,6,6,6,6,6,7,7,7,7,8,8,8,8,8,8,8,8,8],[3,4,3,1,2,3,4,5,5,6,3,4,5,5,5,6,6,0,0,1,3,4,5,5,5,5,6,6,6,0,0,0,0,0,1,1,1,2,2,3,3,4,5,5,5,5,5,6,6,6,6,7,7,7,7,7,7,7,7,7,8,8,8,8,8,8],[2,3,2,0,1,2,3,4,4,5,2,3,4,4,4,5,5,6,6,0,2,3,4,4,4,4,5,5,5,6,6,6,6,6,0,0,0,1,1,2,2,3,4,4,4,4,4,5,5,5,5,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,8,8,8,8,8,8,8],[1,2,1,6,0,1,2,3,3,4,1,2,3,3,3,4,4,5,5,6,1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,0,0,1,1,2,3,3,3,3,3,4,4,4,4,5,5,5,5,5,5,5,5,5,6,6,6,6,6,6,7,7,7,7,7,7,7,8,8,8,8,8],[0,1,0,5,6,0,1,2,2,3,0,1,2,2,2,3,3,4,4,5,0,1,2,2,2,2,3,3,3,4,4,4,4,4,5,5,5,6,6,0,0,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,6,6,6,6,6,6,6,7,7,7,7,7,8,8,8],[6,0,6,4,5,6,0,1,1,2,6,0,1,1,1,2,2,3,3,4,6,0,1,1,1,1,2,2,2,3,3,3,3,3,4,4,4,5,5,6,6,0,1,1,1,1,1,2,2,2,2,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,5,5,5,5,5,5,5,6,6,6,6,6,7,7,7,8,8,8,8,8,8,8],[5,6,5,3,4,5,6,0,0,1,5,6,0,0,0,1,1,2,2,3,5,6,0,0,0,0,1,1,1,2,2,2,2,2,3,3,3,4,4,5,5,6,0,0,0,0,0,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,4,5,5,5,5,5,6,6,6,7,7,7,7,7,7,7,8,8,8,8,8],[4,5,4,2,3,4,5,6,6,0,4,5,6,6,6,0,0,1,1,2,4,5,6,6,6,6,0,0,0,1,1,1,1,1,2,2,2,3,3,4,4,5,6,6,6,6,6,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,4,4,4,4,4,5,5,5,6,6,6,6,6,6,6,7,7,7,7,7,8,8,8,8,8,8,8,8,8,8,8,8,8,8],[3,4,3,1,2,3,4,5,5,6,3,4,5,5,5,6,6,0,0,1,3,4,5,5,5,5,6,6,6,0,0,0,0,0,1,1,1,2,2,3,3,4,5,5,5,5,5,6,6,6,6,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,3,4,4,4,5,5,5,5,5,5,5,6,6,6,6,6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,8,8,8,8,8,8,8,8,8,8],[2,3,2,0,1,2,3,4,4,5,2,3,4,4,4,5,5,6,6,0,2,3,4,4,4,4,5,5,5,6,6,6,6,6,0,0,0,1,1,2,2,3,4,4,4,4,4,5,5,5,5,6,6,6,6,6,6,6,6,6,0,0,0,0,0,0,1,1,1,1,1,1,1,2,2,2,2,2,3,3,3,4,4,4,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7,7,7,7,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8],[1,2,1,6,0,1,2,3,3,4,1,2,3,3,3,4,4,5,5,6,1,2,3,3,3,3,4,4,4,5,5,5,5,5,6,6,6,0,0,1,1,2,3,3,3,3,3,4,4,4,4,5,5,5,5,5,5,5,5,5,6,6,6,6,6,6,0,0,0,0,0,0,0,1,1,1,1,1,2,2,2,3,3,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,6,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,8,8,8,8,8,8,8,8,8,8,8],[0,1,0,5,6,0,1,2,2,3,0,1,2,2,2,3,3,4,4,5,0,1,2,2,2,2,3,3,3,4,4,4,4,4,5,5,5,6,6,0,0,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,6,6,6,6,6,6,6,0,0,0,0,0,1,1,1,2,2,2Interrupted.
Prelude Data.List> length . (!!80) $ iterate step arr 
390923
Prelude Data.List> length . (!!256) $ iterate step arr
<interactive>: getMBlocks: VirtualAlloc MEM_COMMIT failed: The paging file is too small for this operation to complete.
Ben/PRO/Stu/Advent of Code 2021> ghci
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
Prelude> import Data.List
Prelude Data.List> step [q,w,e,r,t,y,u,i,o] = [w,e,r,t,y,u,i+q,o,q]
Prelude Data.List> step [0,1,1,2,1,0,0,0,0]          
[1,1,2,1,0,0,0,0,0]
Prelude Data.List> step [0,1,1,2,1,0,0,0,0]
[1,1,2,1,0,0,0,0,0]
Prelude Data.List> step $ step [0,1,1,2,1,0,0,0,0]
[1,2,1,0,0,0,1,0,1]
Prelude Data.List> count n = length . filter (==n)
Prelude Data.List> arr = [1,2,1,1,1,1,1,1,2,1,3,1,1,1,1,3,1,1,1,5,1,1,1,4,5,1,1,1,3,4,1,1,1,1,1,1,1,5,1,4,1,1,1,1,1,1,1,5,1,3,1,3,1,1,1,5,1,1,1,1,1,5,4,1,2,4,31,,11,1,,1,11,1,11,,,1,1,,,2,4]
Prelude Data.List> ar = map (flip $ count arr) [0..8]

<interactive>:8:18: error:
    * Couldn't match type `Int' with `b0 -> c'
      Expected type: [[a]] -> b0 -> c
        Actual type: [[a]] -> Int
    * Possible cause: `count' is applied to too many arguments
      In the second argument of `($)', namely `count arr'
      In the first argument of `map', namely `(flip $ count arr)'
      In the expression: map (flip $ count arr) [0 .. 8]
    * Relevant bindings include
        ar :: [[[a]] -> c] (bound at <interactive>:8:1)
Prelude Data.List> :t flip $ count arr

<interactive>:1:8: error:
    * Couldn't match type `Int' with `b -> c'
      Expected type: [[a]] -> b -> c
        Actual type: [[a]] -> Int
    * Possible cause: `count' is applied to too many arguments
      In the second argument of `($)', namely `count arr'
      In the expression: flip $ count arr
Prelude Data.List> ar = map ((flip count) arr) [0..8]
Prelude Data.List> ar
[0,207,26,21,24,22,0,0,0]
Prelude Data.List> sum . (!!256) $ iterate step ar
1749945484935
Prelude Data.List>