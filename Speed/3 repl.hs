Ben/PRO/Stu/Advent of Code 2021> ghci
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
Prelude> 0b101

<interactive>:1:2: error: Variable not in scope: b101
Prelude> arr=["101000111100", "000011111101", "011100000100", "100100010000", "011110010100", "101001100000", "110001010000", "111110011011", "00]Prelude> g="110101101101"
Prelude> e=""
Prelude> e="001010010010"
Prelude> until ((==1) . length) (\(ls, idx) -> (filter ls ((== (g !! idx)) . (!! idx)), idx + 1)) (arr, 0)

<interactive>:6:40: error:
    * Couldn't match expected type `a -> Bool' with actual type `[a]'
    * Possible cause: `filter' is applied to too many arguments
      In the expression: filter ls ((== (g !! idx)) . (!! idx))
      In the expression:
        (filter ls ((== (g !! idx)) . (!! idx)), idx + 1)
      In the second argument of `until', namely
        `(\ (ls, idx)
            -> (filter ls ((== (g !! idx)) . (!! idx)), idx + 1))'
    * Relevant bindings include
        ls :: a -> Bool (bound at <interactive>:6:27)
        it :: (a -> Bool, Int) (bound at <interactive>:6:1)

<interactive>:6:51: error:
    * Couldn't match expected type `[a]'
                  with actual type `[Char] -> Bool'
    * Probable cause: `(.)' is applied to too few arguments
      In the second argument of `filter', namely
        `((== (g !! idx)) . (!! idx))'
      In the expression: filter ls ((== (g !! idx)) . (!! idx))
      In the expression:
        (filter ls ((== (g !! idx)) . (!! idx)), idx + 1)
    * Relevant bindings include
        ls :: a -> Bool (bound at <interactive>:6:27)
        it :: (a -> Bool, Int) (bound at <interactive>:6:1)

<interactive>:6:91: error:
    * Couldn't match expected type `a -> Bool'
                  with actual type `[[Char]]'
    * In the expression: arr
      In the third argument of `until', namely `(arr, 0)'
      In the expression:
        until
          ((== 1) . length)
          (\ (ls, idx) -> (filter ls ((== (g !! idx)) . (!! idx)), idx + 1))
          (arr, 0)
    * Relevant bindings include
        it :: (a -> Bool, Int) (bound at <interactive>:6:1)
Prelude> until ((==1) . length . fst) (\(ls, idx) -> (filter ls ((== (g !! idx)) . (!! idx)), idx + 1)) (arr, 0)

<interactive>:7:53: error:
    * Couldn't match expected type `[Char] -> Bool'
                  with actual type `[[Char]]'
    * In the first argument of `filter', namely `ls'
      In the expression: filter ls ((== (g !! idx)) . (!! idx))
      In the expression:
        (filter ls ((== (g !! idx)) . (!! idx)), idx + 1)

<interactive>:7:57: error:
    * Couldn't match expected type `[[Char]]'
                  with actual type `[Char] -> Bool'
    * Probable cause: `(.)' is applied to too few arguments
      In the second argument of `filter', namely
        `((== (g !! idx)) . (!! idx))'
      In the expression: filter ls ((== (g !! idx)) . (!! idx))
      In the expression:
        (filter ls ((== (g !! idx)) . (!! idx)), idx + 1)
Prelude> :t ((==1) . length . fst)
((==1) . length . fst) :: Foldable t => (t a, b) -> Bool
Prelude> :t (\(ls, idx) -> (filter ls ((== (g !! idx)) . (!! idx)), idx + 1))

<interactive>:1:28: error:
    * Couldn't match expected type `[a]'
                  with actual type `[Char] -> Bool'
    * Probable cause: `(.)' is applied to too few arguments
      In the second argument of `filter', namely
        `((== (g !! idx)) . (!! idx))'
      In the expression: filter ls ((== (g !! idx)) . (!! idx))
      In the expression:
        (filter ls ((== (g !! idx)) . (!! idx)), idx + 1)
    * Relevant bindings include
        ls :: a -> Bool (bound at <interactive>:1:4)
Prelude> :t (== (g !! idx))

<interactive>:1:11: error:
    * Variable not in scope: idx :: Int
    * Perhaps you meant `id' (imported from Prelude)
Prelude> :t (== (g !! 5))
(== (g !! 5)) :: Char -> Bool
Prelude> :t (!! 5)
(!! 5) :: [a] -> a
Prelude> :t ((== (g !! 0)) . (!! 0))
((== (g !! 0)) . (!! 0)) :: [Char] -> Bool
Prelude> until ((==1) . length . fst) (\(ls, idx) -> (filter ((== (g !! idx)) . (!! idx)) ls, idx + 1)) (arr, 0)
(["110101101100"],11)
Prelude> until ((==1) . length . fst) (\(ls, idx) -> (filter ((== (e !! idx)) . (!! idx)) ls, idx + 1)) (arr, 0)
(["001010010010"],11)
Prelude> until ((==1) . length . fst) (\(ls, idx) -> (filter ((== (cmn $ map (!! idx) ls)) . (!! idx)) ls, idx + 1)) (arr, 0)

<interactive>:16:59: error:
    Variable not in scope: cmn :: [Char] -> Char
Prelude> import Control.Arrow
Prelude Control.Arrow> cmn = head . head . maximumBy length . group . sort

<interactive>:18:21: error:
    * Variable not in scope: maximumBy :: (t0 a0 -> Int) -> b0 -> [[c]]
    * Perhaps you meant `maximum' (imported from Prelude)

<interactive>:18:40: error:
    Variable not in scope: group :: b1 -> b0

<interactive>:18:48: error:
    * Variable not in scope: sort :: a -> b1
    * Perhaps you meant `sqrt' (imported from Prelude)
Prelude Control.Arrow> import Data.List
Prelude Control.Arrow Data.List> cmn = head . head . maximumBy length . group . sort

<interactive>:20:31: error:
    * Couldn't match type `Int' with `[[c]] -> Ordering'
      Expected type: [[c]] -> [[c]] -> Ordering
        Actual type: [[c]] -> Int
    * In the first argument of `maximumBy', namely `length'
      In the first argument of `(.)', namely `maximumBy length'
      In the second argument of `(.)', namely
        `maximumBy length . group . sort'
    * Relevant bindings include
        cmn :: [[c]] -> c (bound at <interactive>:20:1)
Prelude Control.Arrow Data.List> cmn = head . head . maximumBy (\a b -> (length a) - (length b)) . group . sort

<interactive>:21:40: error:
    * Couldn't match expected type `Ordering' with actual type `Int'
    * In the expression: (length a) - (length b)
      In the first argument of `maximumBy', namely
        `(\ a b -> (length a) - (length b))'
      In the first argument of `(.)', namely
        `maximumBy (\ a b -> (length a) - (length b))'
Prelude Control.Arrow Data.List> cmn = head . head . foldr (\a b -> if (length a) > (length b) then a else b) [] . group . sort
Prelude Control.Arrow Data.List> cmn "100"

<interactive>:23:5: error:
    * Couldn't match type `Char' with `[c]'
      Expected type: [[c]]
        Actual type: [Char]
    * In the first argument of `cmn', namely `"100"'
      In the expression: cmn "100"
      In an equation for `it': it = cmn "100"
    * Relevant bindings include it :: c (bound at <interactive>:23:1)
Prelude Control.Arrow Data.List> sort "100"
"001"
Prelude Control.Arrow Data.List> group $ sort "100"
["00","1"]
Prelude Control.Arrow Data.List> cmn = head . foldr (\a b -> if (length a) > (length b) then a else b) [] . group . sort
Prelude Control.Arrow Data.List> cmn "100"
'0'
Prelude Control.Arrow Data.List> cmn "100`111"
'1'
Prelude Control.Arrow Data.List> until ((==1) . length . fst) (\(ls, idx) -> (filter ((== (cmn $ map (!! idx) ls)) . (!! idx)) ls, idx + 1)) (arr, 0)
(["111110011011"],12)
Prelude Control.Arrow Data.List> until ((==1) . length . fst) (\(ls, idx) -> (filter ((!= (cmn $ map (!! idx) ls)) . (!! idx)) ls, idx + 1)) (arr, 0)

<interactive>:30:55: error:
    * Variable not in scope: (!=) :: Char -> Char -> Bool
    * Perhaps you meant one of these:
        `>=' (imported from Prelude), `==' (imported from Prelude),
        `/=' (imported from Prelude)
Prelude Control.Arrow Data.List> until ((==1) . length . fst) (\(ls, idx) -> (filter ((/= (cmn $ map (!! idx) ls)) . (!! idx)) ls, idx + 1)) (arr, 0)
(["011010100000"],9)
Prelude Control.Arrow Data.List>