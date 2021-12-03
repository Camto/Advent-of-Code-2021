GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
Prelude> data Cmd = Forward Int | Up Int | Down Int
Prelude> arr = [Forward 1, Down 3, Down 2, Up 1, Down 7, Down 8, Forward 6, Forward 1, Forward 1, Down 6, Up 3, Down 7, Down 1, Down 6, Forward 6, Down 6, Foro D rr r  33n rDo,  w Fa,9 Frr, d,od r , F  p6p,Fp rdao n oF1 dw5Un w1 r2nFaDwrFow  p42F8rwdo,,Dna ,4F,,  r4w,d2o,dnpFF o,n r  d6pd5,r  ,wdwaaww,rd9 on22 ,n pa,w2   o 9ro owd,aw F Dp1 rwo   o dFdonn5, D D7 do  ww r,1r, o  oD Dr,DaFFdr,w  roarp, DDrw   4,,o rrd  dDw ,,d,Fn, r]
Prelude> foldl' (\(h, v) cmd -> case cmd of {Forward n -> (h + n, v) ; Up n -> (h, v - n) ; Down n -> (h, v + n)}) (0, 0) arr

<interactive>:3:1: error:
    * Variable not in scope:
        foldl'
          :: ((Int, Int) -> Cmd -> (Int, Int)) -> (a0, b0) -> [Cmd] -> t
    * Perhaps you meant one of these:
        `foldl' (imported from Prelude), `foldl1' (imported from Prelude),
        `foldr' (imported from Prelude)
Prelude> import Data.List
Prelude Data.List> foldl' (\(h, v) cmd -> case cmd of {Forward n -> (h + n, v) ; Up n -> (h, v - n) ; Down n -> (h, v + n)}) (0, 0) arr
(1931,953)
Prelude Data.List> 1931 * 953
1840243
Prelude Data.List> foldl' (\(h, d, a) cmd -> case cmd of {Forward n -> (h + n, d + n * a, a) ; Up n -> (h, d, a - n) ; Down n -> (h, d + n, a n)}) (0, 0, 0) arr(1931,896745,953)
Prelude Data.List> 1931 * 896745
1731614595
Prelude Data.List> foldl' (\(h, d, a) cmd -> case cmd of {Forward n -> (h + n, d + n * a, a) ; Up n -> (h, d, a - n) ; Down n -> (h, d, a + n)}) (0, 0, 0) arrr 

<interactive>:9:115: error:
    * Variable not in scope: dd :: Int
    * Perhaps you meant one of these:
        `d' (line 9), `id' (imported from Prelude),
        `odd' (imported from Prelude)
Prelude Data.List> foldl' (\(h, d, a) cmd -> case cmd of {Forward n -> (h + n, d + n * a, a) ; Up n -> (h, d, a - n) ; Down n -> (h, d, a + n)}) (0, 0, 0) arr 
(1931,894762,953)
Prelude Data.List> 1931 * 894762
1727785422