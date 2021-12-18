Ben/PRO/Stu/Advent of Code 2021> ghci
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
Prelude> data Snail = Pair Snail Snail | Num Int
Prelude> Pair (Num 4) (Num 6)

<interactive>:2:1: error:
    * No instance for (Show Snail) arising from a use of `print'
    * In a stmt of an interactive GHCi command: print it
Prelude> data Snail = Pair Snail Snail | Num Int deriving (Read, Show, Eq)
Prelude> Pair (Num 4) (Num 6)
Pair (Num 4) (Num 6)
Prelude> (Pair (Pair (Pair (Pair (Num 0) (Num 7)) (Num 4)) (Pair (Pair (Num 7) (Num 8)) (Pair (Num 6) (Num 0)))) (Pair (Num 8) (Num 1)))
Pair (Pair (Pair (Pair (Num 0) (Num 7)) (Num 4)) (Pair (Pair (Num 7) (Num 8)) (Pair (Num 6) (Num 0)))) (Pair (Num 8) (Num 1))
Prelude> data Explode = { newnum :: Snail, exploded :: Bool, justexploded :: Bool }

<interactive>:6:16: error:
    Cannot parse data constructor in a data/newtype declaration:
      {newnum :: Snail, exploded :: Bool, justexploded :: Bool}
Prelude> data Explode = Explode { newnum :: Snail, exploded :: Bool, justexploded :: Bool }
Prelude> data Explode = Explode { newnum :: Snail, exploded :: Bool, justexploded :: (Int, Int) }
Prelude> :{
Prelude| fromnum (Num n) = n
Prelude| frumnum _ = undefined
Prelude| :}
Prelude> fromnum $ Num 4
4
Prelude> fromnum $ Pair (Num 4) (Num 5)
*** Exception: <interactive>:10:1-19: Non-exhaustive patterns in function fromnum

Prelude> data Explode = Explode { newnum :: Snail, exploded :: Maybe (Int, Int) }
Prelude> a b c = (b,c)
Prelude> a 1 $ 2
(1,2)
Prelude> a $ 1 $ 2

<interactive>:18:1: error:
    * Non type-variable argument in the constraint: Num (t -> a)
      (Use FlexibleContexts to permit this)
    * When checking the inferred type
        it :: forall t a b. (Num t, Num (t -> a)) => b -> (a, b)
Prelude> (a $ 1) $ 2
(1,2)
Prelude> :q
Leaving GHCi.
Ben/PRO/Stu/Advent of Code 2021> ghci .\Speed\18.hs
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )
Ok, one module loaded.
*Main> explode 0 (Num 6)
Nothing
*Main> n=(Pair (Pair (Pair (Pair (Pair (Num 9) (Num 8)) (Num 1)) (Num 2)) (Num 3)) (Num 4))
*Main> explode 0 n
Just (Pair (Pair (Pair (Pair (Num 0) (Num 9)) (Num 2)) (Num 3)) (Num 4),9,0)
*Main> m=(Pair (Pair (Pair (Pair (Num 1) (Num 1)) (Pair (Num 2) (Num 2))) (Pair (Num 3) (Num 3))) (Pair (Num 4) (Num 4)))
*Main> explode 0 m
Nothing
*Main> m'=Pair m $ Pair (Num 5) (Num 5)
*Main> explode 0 m'
Just (Pair (Pair (Pair (Pair (Num 0) (Num 3)) (Num 3)) (Num 4)) (Num 5),1,0)
*Main> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )
Ok, one module loaded.
*Main> explode 0 m'
Just (Pair (Pair (Pair (Pair (Num 0) (Pair (Num 3) (Num 2))) (Pair (Num 3) (Num 3))) (Pair (Num 4) (Num 4))) (Pair (Num 5) (Num 5)),1,0)
*Main> explode 0 <$> explode 0 m'

<interactive>:10:15: error:
    * Couldn't match type `(Snail, Int, Int)' with `Snail'
      Expected type: Maybe Snail
        Actual type: Maybe (Snail, Int, Int)
    * In the second argument of `(<$>)', namely explode 0 m'
      In the expression: explode 0 <$> explode 0 m'
      In an equation for `it': it = explode 0 <$> explode 0 m'
*Main> Just (e,_,_) <- explode 0 m'

<interactive>:11:17: error:
    * Couldn't match expected type `IO (Maybe (a0, b0, c0))'
                  with actual type `Maybe (Snail, Int, Int)'
    * In the first argument of `GHC.GHCi.ghciStepIO ::
                                  forall a. IO a -> IO a', namely
        `(explode 0 m')'
      In a stmt of an interactive GHCi command:
        Just (e, _, _) <- GHC.GHCi.ghciStepIO :: forall a. IO a -> IO a
                          (explode 0 m')
*Main> (e,_,_) <- explode 0 m'     

<interactive>:12:12: error:
    * Couldn't match expected type `IO (a0, b0, c0)'
                  with actual type `Maybe (Snail, Int, Int)'
    * In the first argument of `GHC.GHCi.ghciStepIO ::
                                  forall a. IO a -> IO a', namely
        `(explode 0 m')'
      In a stmt of an interactive GHCi command:
        (e, _, _) <- GHC.GHCi.ghciStepIO :: forall a. IO a -> IO a
                     (explode 0 m')
*Main> Just (e,_,_) = explode 0 m' 
*Main> explode 0 e
Just (Pair (Pair (Pair (Pair (Num 3) (Num 0)) (Pair (Num 5) (Num 3))) (Pair (Num 4) (Num 4))) (Pair (Num 5) (Num 5)),0,0)
*Main> 15 `div` 2
7
*Main> 16 `div` 2
8
*Main> 16 `div` 2
8
*Main> 17 `div` 2
8
*Main> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )
Ok, one module loaded.
*Main> split s
Just (Pair (Pair (Pair (Pair (Num 0) (Num 7)) (Num 4)) (Pair (Pair (Num 7) (Num 8)) (Pair (Num 0) (Num 13)))) (Pair (Num 1) (Num 1)))
*Main> split <$> split s
Just (Just (Pair (Pair (Pair (Pair (Num 0) (Num 7)) (Num 4)) (Pair (Pair (Num 7) (Num 8)) (Pair (Num 0) (Pair (Num 6) (Num 7))))) (Pair (Num 1) (Num 1)))) 
*Main> split =<< split s
Just (Pair (Pair (Pair (Pair (Num 0) (Num 7)) (Num 4)) (Pair (Pair (Num 7) (Num 8)) (Pair (Num 0) (Pair (Num 6) (Num 7))))) (Pair (Num 1) (Num 1)))
*Main> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )

Speed\18.hs:11:13: error:
    * Couldn't match expected type `Snail -> Maybe (Snail, Int, Int)'
                  with actual type `Maybe (Snail, Int, Int)'
    * Possible cause: explode' is applied to too many arguments
      In the expression: explode' 0 n
      In an equation for `explode': explode n = explode' 0 n
   |
11 | explode n = explode' 0 n
   |             ^^^^^^^^^^^^

Speed\18.hs:36:9: error:
    * Couldn't match expected type `Snail -> Maybe (Snail, Int, Int)'
                  with actual type `Maybe (Snail, b0, c0)'
    * In the pattern: Just (n', _, _)
      In a case alternative: Just (n', _, _) -> reduce n'
      In the expression:
        case explode n of
          Just (n', _, _) -> reduce n'
          Nothing
            -> case split n of
                 Just n' -> reduce n'
                 Nothing -> n
   |
36 |         Just (n', _, _) -> reduce n'
   |         ^^^^^^^^^^^^^^^

Speed\18.hs:37:9: error:
    * Couldn't match expected type `Snail -> Maybe (Snail, Int, Int)'
                  with actual type `Maybe a0'
    * In the pattern: Nothing
      In a case alternative:
          Nothing
            -> case split n of
                 Just n' -> reduce n'
                 Nothing -> n
      In the expression:
        case explode n of
          Just (n', _, _) -> reduce n'
          Nothing
            -> case split n of
                 Just n' -> reduce n'
                 Nothing -> n
   |
37 |         Nothing -> case split n of
   |         ^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )

Speed\18.hs:11:11: error:
    * Couldn't match type `Maybe (Snail, Int, Int)'
                     with `Snail -> Maybe (Snail, Int, Int)'
      Expected type: Snail -> Snail -> Maybe (Snail, Int, Int)
        Actual type: Snail -> Maybe (Snail, Int, Int)
    * Possible cause: explode' is applied to too many arguments
      In the expression: explode' 0
      In an equation for `explode': explode = explode' 0
   |
11 | explode = explode' 0
   |           ^^^^^^^^^^

Speed\18.hs:36:9: error:
    * Couldn't match expected type `Snail -> Maybe (Snail, Int, Int)'
                  with actual type `Maybe (Snail, b0, c0)'
    * In the pattern: Just (n', _, _)
      In a case alternative: Just (n', _, _) -> reduce n'
      In the expression:
        case explode n of
          Just (n', _, _) -> reduce n'
          Nothing
            -> case split n of
                 Just n' -> reduce n'
                 Nothing -> n
   |
36 |         Just (n', _, _) -> reduce n'
   |         ^^^^^^^^^^^^^^^

Speed\18.hs:37:9: error:
    * Couldn't match expected type `Snail -> Maybe (Snail, Int, Int)'
                  with actual type `Maybe a0'
    * In the pattern: Nothing
      In a case alternative:
          Nothing
            -> case split n of
                 Just n' -> reduce n'
                 Nothing -> n
      In the expression:
        case explode n of
          Just (n', _, _) -> reduce n'
          Nothing
            -> case split n of
                 Just n' -> reduce n'
                 Nothing -> n
   |
37 |         Nothing -> case split n of
   |         ^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )
Ok, one module loaded.
*Main> reduce c
Pair (Pair (Pair (Pair (Num 0) (Num 7)) (Num 4)) (Pair (Pair (Num 7) (Num 8)) (Pair (Num 6) (Num 0)))) (Pair (Num 8) (Num 1))
*Main> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )

Speed\18.hs:43:18: error:
    * Couldn't match type `Snail' with `Snail -> Snail'
      Expected type: Snail -> Snail -> Snail
        Actual type: Snail -> Snail
    * Possible cause: `(.)' is applied to too many arguments
      In the first argument of foldl1', namely `(reduce . Pair)'
      In the expression: foldl1' (reduce . Pair)
      In an equation for `part1': part1 = foldl1' (reduce . Pair)
   |
43 | part1 = foldl1' (reduce . Pair)
   |                  ^^^^^^^^^^^^^

Speed\18.hs:43:27: error:
    * Couldn't match type `Snail -> Snail' with `Snail'
      Expected type: Snail -> Snail
        Actual type: Snail -> Snail -> Snail
    * Probable cause: `Pair' is applied to too few arguments
      In the second argument of `(.)', namely `Pair'
      In the first argument of foldl1', namely `(reduce . Pair)'
      In the expression: foldl1' (reduce . Pair)
   |
43 | part1 = foldl1' (reduce . Pair)
   |                           ^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )
Ok, one module loaded.
*Main> :r      
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )
Ok, one module loaded.
*Main> part1 input
Pair (Pair (Pair (Pair (Num 6) (Num 6)) (Pair (Num 7) (Num 7))) (Pair (Pair (Num 7) (Num 7)) (Pair (Num 7) (Num 7)))) (Pair (Pair (Pair (Num 7) (Num 8)) (Pair (Num 0) (Num 8))) (Pair (Pair (Num 8) (Num 8)) (Pair (Num 8) (Num 7))))
*Main> Lr

<interactive>:31:1: error:
    * Data constructor not in scope: Lr
    * Perhaps you meant one of these:
        `LT' (imported from Prelude),
        variable `or' (imported from Data.List)
*Main> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )
Ok, one module loaded.
*Main> part1 input
4132
*Main> :r
[1 of 1] Compiling Main             ( Speed\18.hs, interpreted )
Ok, one module loaded.
*Main> part2 input
4685
*Main> :q
Leaving GHCi.