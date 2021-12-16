Ben/PRO/Stu/Advent of Code 2021> ghci
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
Prelude> import Data.List
Prelude Data.List> import GHC.Utils.Misc

<no location info>: error:
    Could not find module `GHC.Utils.Misc'
    It is not a module in the current program, or in any known package.
Prelude Data.List> 220D700071F39F9C6BC92D4A6713C737B3E98783004AC0169B4B99F93CFC31AC4D8A4BB89E9D654D216B80131DC0050B20043E27C1F83240086C468A885DB442A80076D94E00606A23140
<interactive>:3:4: error:
    Data constructor not in scope:
      D700071F39F9C6BC92D4A6713C737B3E98783004AC0169B4B99F93CFC31AC4D8A4BB89E9D654D216B80131DC0050B20043E27C1F83240086C468A311CC0188DB0BA12F776DC5DE635094A7D2370082795A52911791ECB7EDA9CFD634BDED14030047C01498EE203931BF7256189A593005E116802D34673999A3A805126EB2B5BEEBB823CB561E9F18C011926CA005465B0BB2D85D700B675DA72DD7E9DBE377D62B27698F0D4BAD100735276B4B93C0FF002FF359F3BCFF0DC802ACC002CE3546B92FCB7590C380210523E1802098ED076108002110960D45F988EB14D9D9802F232A32E802F2FDBEBA7D3B3B7FB06320132B0037700043224C5D8F2000844558C704A6FEAA800D2CFE27B921CA872003A90C09CF600B8803B10E144741006A1C47F85D29DCF7C9C40132680213037284B3D488640A1008A314BC3D86D9AB6492637D331003E79300012F9BDE8560F1009B32B09EC7FC015008744287511CC0269810987789132AC600BD802C00087C1D88D05C001088BF1BE284D298005FB1366B353798689D8A84D5194C017D005647181A931895D588E7736C6A50087B35897CFCBD9AC4A26DD880259A0037E49861F4E4349A6005CFAD180333E95281338A930EA400824981CC8A2804523AA6F5B3691CF5425B05B3D9AF8DD400F9EDA11007898C3ACF52F9FF64326009D802733197392438BF22C52D5AD2D8524034E800C8B202F604008602A6CC00940256C008A9601FF8400D100240062F50038400970034003CE600C70C8C563FB37CE4BD1BFA769839802F400F8C9CA79429B96E0A93FAE4A5F32201428401A8F508A1B0002131723B43400043618C2089E40143CBA748B3CE01C893C8904F4E1B2D31253929E42A53929E420
Prelude Data.List> s = "220D700071F39F9C6BC92D4A6713C737B3E98783004AC0169B4B99F93CFC31AC4D8A4BB89E9D654D216B80131DC0050B20043E27C1F8324008696B70B20B004D30076852CD01C82020"
Prelude Data.List> :{   
Prelude Data.List| h2b c = \case c of
Prelude Data.List|  '0'->"0000"
Prelude Data.List|  '1'->"0001"
Prelude Data.List|  '2'->"0010"
Prelude Data.List|  '3'->"
Prelude Data.List| :}

<interactive>:6:17: error: parse error on input `of'
Prelude Data.List> :{
Prelude Data.List| h2b c = \case c of
Prelude Data.List|  '2'->"0010":}
Prelude Data.List| :}

<interactive>:8:17: error: parse error on input `of'
Prelude Data.List> :{
Prelude Data.List| h2v c = case c of
Prelude Data.List|  '0'->"0000"
Prelude Data.List|  '1'->"0001"
Prelude Data.List|  '2'->"0010"
Prelude Data.List|  '3'->"0011"
Prelude Data.List|  '4'->"0100"
Prelude Data.List|  '5'->"0101"
Prelude Data.List|  '6'->"0110"
Prelude Data.List|  '7'->"0111"
Prelude Data.List|  '8'->"1000"
Prelude Data.List|  '9'->"1001"
Prelude Data.List|  'A'->"1010" 
Prelude Data.List|  'B'->"1011"
Prelude Data.List|  'C'->"1100"
Prelude Data.List|  'D'->"1101"
Prelude Data.List|  'E'->"1110"
Prelude Data.List|  'F'->"1111"
Prelude Data.List| :}
Prelude Data.List> map h2b s 

<interactive>:28:5: error:
    * Variable not in scope: h2b :: Char -> b
    * Perhaps you meant `h2v' (line 10)
Prelude Data.List>
Prelude Data.List> h2b = h2v
Prelude Data.List> map h2b s
["0010","0010","0000","1101","0111","0000","0000","0000","0111","0001","1111","0011","1001","1111","1001","1100","0110","1011","1100","1001","0100","1010","0110","0111","0001","0011","1100","0111","0011","0111","1011","0011","1110","1001","1000","0111","1000","0011","0000","0000","1100","0000","0001","0110","1001","1011","0100","1011","1001","1001","1111","1001","0011","1100","1111","1100","0011","0001","1010","1101","1000","1010","0100","1011","1011","1000","1001","1110","1001","1101","0110","0101","0100","1101","0010","0001","0110","1011","1000","0011","0001","1101","1100","0000","0000","0101","0000","1011","0010","0000","0000","0100","0011","1110","0010","0111","1100","0001","1111","0010","0100","0000","0000","1000","0110","1100","0100","0110","1000","1010","0011","0001","0001","1100","1100","0000","0001","1000","1000","0000","1011","1010","0001","0010","1011","0000","0000","0111","0001","1001","0010","0010","0001","1101","0011","1111","0111","1010","1111","0110","1101","1100","0101","1101","1110","0110","0011","0101","0000","1001","0100","1010","0111","1101","0010","0011","0111","0000","0000","0111","1001","0101","1010","0101","0010","1001","0001","0001","0111","1001","0001","1110","1100","1011","0111","1110","1101","1010","1001","1101","0110","0011","0100","1011","1101","1110","1101","0001","0100","0000","0011","0000","0000","0100","0111","1100","0000","0001","0100","1110","1110","0010","0000","0011","1001","0011","0001","1011","1111","0111","0010","0101","0110","0001","1000","1001","1010","0101","1000","0000","0101","1110","0001","0001","0110","1000","0000","0010","1101","0011","0100","0110","0111","0011","1001","1001","Interrupted.
Prelude Data.List> concatMap h2b s
"00100010000011010111000000000000011100011111001110011111100111000110101111001001001011010100101001100111000100111100011100110111101100111110000011000000000100101011000000000101101001101101001011100110011111100100111100111111000011000110101100010011011000101001001011101110001001100101010011010010000101101011100000000001001100011101110000000000010100001011001000000000010000111110001001111100000111111000001100100100101100010001101000101000110001000111001100000000011000100011011011000010111010000100101011000000000111000110010010001000011101001111110111110110110111000101110111100110001101010000100101001010011111010010001101110000000010000010011110010101101001010010100100010001011110010001111110110110101001110011111101011000110100101111011110110100010100000000110000000001000111110000000001010010011000111011100010000000111001001111001001010110000110001001101001011001001100000000010111100001000101101000000000101101001101000110011100111001100110011010001110101000000010111010110010101101011011111011101011101110000010001111001Interrupted.
Prelude Data.List> map (\d -> d == '1') . concatMap h2b s         

<interactive>:32:24: error:
    * Couldn't match expected type `a -> [Char]'
                  with actual type `[Char]'
    * Possible cause: `concatMap' is applied to too many arguments
      In the second argument of `(.)', namely `concatMap h2b s'
      In the expression: map (\ d -> d == '1') . concatMap h2b s
      In an equation for `it':
          it = map (\ d -> d == '1') . concatMap h2b s
    * Relevant bindings include
        it :: a -> [Bool] (bound at <interactive>:32:1)
Prelude Data.List>
Prelude Data.List> map (\d -> d == '1') $ concatMap h2b s
[False,False,True,False,False,False,True,False,False,False,False,False,True,True,False,True,False,True,True,True,False,False,False,False,Fae,False,False,False,False,False,False,True,True,True,False,False,False,True,True,True,True,True,False,False,True,True,True,False,False,Truee,True,True,False,False,True,True,True,False,False,False,True,True,False,True,False,True,True,True,True,False,False,True,False,False,True,Fe,False,True,True,False,True,False,True,False,False,True,False,True,False,False,True,True,False,False,True,True,True,False,False,False,Truerue,True,True,True,False,False,False,True,True,True,False,False,True,True,False,True,True,True,True,False,True,True,False,False,True,True,TFalse,True,False,False,True,True,False,False,False,False,True,True,True,True,False,False,False,False,False,True,True,False,False,False,FalsFalse,False,False,True,False,False,True,False,True,False,True,True,False,False,False,False,False,False,False,False,False,True,False,True,TrFalse,False,True,True,False,True,True,False,True,False,False,True,False,True,True,True,False,False,True,True,False,False,True,True,True,Trulse,False,True,False,False,True,True,True,True,False,False,True,True,True,True,True,True,False,False,False,False,True,True,False,False,Falslse,True,False,True,True,False,False,False,True,False,False,True,True,False,True,True,False,False,False,True,False,True,False,False,True,Fa,False,True,True,True,False,True,True,True,False,False,False,True,False,False,True,True,True,True,FalInterrupted.
Prelude Data.List> arr = map (\d -> d == '1') $ concatMap h2b s
Prelude Data.List> :t fromEnum
fromEnum :: Enum a => a -> Int
Prelude Data.List> fromEnum True
1
Prelude Data.List> b2n = foldl' (\n e -> n * 2 + fromEnum e) 0
Prelude Data.List> b2n [True,False,False]
4
Prelude Data.List> map (b2n . h2b) (['0'..'9'] ++ ['A'..'B'])
[720,721,722,723,724,725,726,727,728,729,730,731]
Prelude Data.List> map (h2b) (['0'..'9'] ++ ['A'..'B'])      
["0000","0001","0010","0011","0100","0101","0110","0111","1000","1001","1010","1011"]
Prelude Data.List> b2b = map (== '1')
Prelude Data.List> map (b2n . b2b . h2b) (['0'..'9'] ++ ['A'..'B'])
[0,1,2,3,4,5,6,7,8,9,10,11]
Prelude Data.List> map (b2n . b2b . h2b) (['0'..'9'] ++ ['A'..'F'])
[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
Prelude Data.List> parse (a:b:c:x:y:z:p) = let (version, type) = (b2n a:b:c:[], b2n x:y:z:[]) in (version, type)

<interactive>:44:39: error: parse error on input `type'
Prelude Data.List> parse (a:b:c:x:y:z:p) = let (version, typeid) = (b2n a:b:c:[], b2n x:y:z:[]) in (version, typeid)

<interactive>:45:56: error:
    * Couldn't match type `t a' with `Int'
      Expected type: [Int]
        Actual type: [t a]
    * In the second argument of `(:)', namely `b : c : []'
      In the expression: b2n a : b : c : []
      In the expression: (b2n a : b : c : [], b2n x : y : z : [])
    * Relevant bindings include
        p :: [t a] (bound at <interactive>:45:20)
        z :: t a (bound at <interactive>:45:18)
        y :: t a (bound at <interactive>:45:16)
        x :: t a (bound at <interactive>:45:14)
        c :: t a (bound at <interactive>:45:12)
        b :: t a (bound at <interactive>:45:10)
        (Some bindings suppressed; use -fmax-relevant-binds=N or -fno-max-relevant-binds)
Prelude Data.List> parse (a:b:c:x:y:z:p) = let (version, typeid) = (b2n [a,b,c], b2n [x,y,z]) in (version, typeid)      
Prelude Data.List> parse arr
(1,0)
Prelude Data.List> parse (a:b:c:x:y:z:p) = let (version, typeid) = (b2n [a,b,c], b2n [x,y,z]) in parsetype typeid p

<interactive>:48:79: error:
    Variable not in scope: parsetype :: Int -> [a] -> t
Prelude Data.List> parsetype 4 (b:a:b:c:d:p) = b2n $ [a,b,c,d] ++ parsetype

<interactive>:49:14: error:
    * Conflicting definitions for `b'
      Bound at: <interactive>:49:14
                <interactive>:49:18
    * In an equation for `parsetype'
Prelude Data.List> parsetype 4 p = parselit p

<interactive>:50:17: error:
    Variable not in scope: parselit :: t -> t1
Prelude Data.List> parselit (b:a:b:c:d:p) = b2n $ [a,b,c,d] ++ parselit p  

<interactive>:51:11: error:
    * Conflicting definitions for `b'
      Bound at: <interactive>:51:11
                <interactive>:51:15
    * In an equation for `parselit'
Prelude Data.List> parselit (q:a:b:c:d:p) = b2n $ [a,b,c,d] ++ if c then parselit p else []

<interactive>:52:1: error:
    Couldn't match type `Int' with `[Bool]'
    Expected type: [Bool] -> [Bool]
      Actual type: [Bool] -> Int
Prelude Data.List> parselit (q:a:b:c:d:p) = [a,b,c,d] ++ if c then parselit p else []
Prelude Data.List> parsetype 4 = b2n . parselit
Prelude Data.List> i2b = b2b . concatMap h2b
Prelude Data.List> i2b "D2FE28"
[True,True,False,True,False,False,True,False,True,True,True,True,True,True,True,False,False,False,True,False,True,False,False,False]
Prelude Data.List> parselit $ i2b "D2FE28"
[True,False,True,False,True,False,True,True,True,True,True,True,False,False,True,False*** Exception: <interactive>:53:1-66: Non-exhaustive nction parselit

Prelude Data.List> parse $ i2b "D2FE28"
(6,4)
Prelude Data.List> parse (a:b:c:x:y:z:p) = let (version, typeid) = (b2n [a,b,c], b2n [x,y,z]) in parsetype typeid p
Prelude Data.List> parse $ i2b "D2FE28"
2021
Prelude Data.List> let a = 4, b = 5 in (a,b)

<interactive>:61:10: error: parse error on input `,'
Prelude Data.List> let a = 4 b = 5 in (a,b)

<interactive>:62:13: error: parse error on input `='
Prelude Data.List> let {a = 4; b = 5} in (a,b)
(4,5)
Prelude Data.List> import Data.Bifunctor
Prelude Data.List Data.Bifunctor> q a = a >>= q

<interactive>:65:1: error:
    * Occurs check: cannot construct the infinite type: a ~ m a
      Expected type: a -> m b
        Actual type: m a -> m b
    * Relevant bindings include
        q :: a -> m b (bound at <interactive>:65:1)
Prelude Data.List Data.Bifunctor> q a = (Just a) >>= q
Prelude Data.List Data.Bifunctor> :t q
q :: a -> Maybe b
Prelude Data.List Data.Bifunctor> data Packet = Packet {version :: Int, typeid :: Int, data :: PacketData}

<interactive>:68:54: error: parse error on input `data'
Prelude Data.List Data.Bifunctor> :{
Prelude Data.List Data.Bifunctor| data Packet = Packet {version :: Int, typeid :: Int, data :: PacketData}
Prelude Data.List Data.Bifunctor| data PacketData = Lit Int | Op [Packet]
Prelude Data.List Data.Bifunctor| :}

<interactive>:71:54: error: parse error on input `data'
Prelude Data.List Data.Bifunctor> data Packet = Packet {version :: Int, typeid :: Int, data :: Int}

<interactive>:72:54: error: parse error on input `data'
Prelude Data.List Data.Bifunctor> data A = A
Prelude Data.List Data.Bifunctor> A

<interactive>:74:1: error:
    * No instance for (Show A) arising from a use of `print'
    * In a stmt of an interactive GHCi command: print it
Prelude Data.List Data.Bifunctor> :t A
A :: A
Prelude Data.List Data.Bifunctor> data Foo = Foo {i :: Int, s :: String} deriving (Show)
Prelude Data.List Data.Bifunctor> :k Packet

<interactive>:1:1: error:
    Not in scope: type constructor or class `Packet'
Prelude Data.List Data.Bifunctor> :{
Prelude Data.List Data.Bifunctor| data Packet = Packet {version :: Int, typeid :: Int, packetdata :: PacketData}
Prelude Data.List Data.Bifunctor| data PacketData = Lit Int | Op [Packet]
Prelude Data.List Data.Bifunctor| :}
Prelude Data.List Data.Bifunctor> cket = Packet {version :: Int, typeid :: Int, data :: Int}

<interactive>:82:24: error: parse error on input `::'
Prelude Data.List Data.Bifunctor> chop n a = (take n a, drop n a)
Prelude Data.List Data.Bifunctor> :{
Prelude Data.List Data.Bifunctor| parse (a:b:c:x:y:z:p) =
Prelude Data.List Data.Bifunctor|  = b2n [a,b,c]
Display all 725 possibilities? (y or n)
!!                              Num                             Prelude.otherwise               group
$                               Op                              Prelude.pi                      groupBy
$!                              Ord                             Prelude.pred                    h2b
&&                              Ordering                        Prelude.print                   h2v
*                               Packet                          Prelude.product                 head
**                              PacketData                      Prelude.properFraction          i
*>                              Prelude.!!                      Prelude.pure                    i2b
+                               Prelude.$                       Prelude.putChar                 id
++                              Prelude.$!                      Prelude.putStr                  init
-                               Prelude.&&                      Prelude.putStrLn                inits
.                               Prelude.*                       Prelude.quot                    insert
/                               Prelude.**                      Prelude.quotRem                 insertBy
/=                              Prelude.*>                      Prelude.read                    interact
<                               Prelude.+                       Prelude.readFile                intercalate
<$                              Prelude.++                      Prelude.readIO                  intersect
<$>                             Prelude.-                       Prelude.readList                intersectBy
<*                              Prelude..                       Prelude.readLn                  intersperse
<*>                             Prelude./                       Prelude.readParen               ioError
<=                              Prelude./=                      Prelude.reads                   isDenormalized
<>                              Prelude.<                       Prelude.readsPrec               isIEEE
=<<                             Prelude.<$                      Prelude.realToFrac              isInfinite
==                              Prelude.<$>                     Prelude.recip                   isInfixOf
>                               Prelude.<*                      Prelude.rem                     isNaN
>=                              Prelude.<*>                     Prelude.repeat                  isNegativeZero
>>                              Prelude.<=                      Prelude.replicate               isPrefixOf
>>=                             Prelude.<>                      Prelude.return                  isSubsequenceOf
A                               Prelude.=<<                     Prelude.reverse                 isSuffixOf
Applicative                     Prelude.==                      Prelude.round                   it
Bifunctor                       Prelude.>                       Prelude.scaleFloat              iterate
Bool                            Prelude.>=                      Prelude.scanl                   iterate'
Bounded                         Prelude.>>                      Prelude.scanl1                  last
Char                            Prelude.>>=                     Prelude.scanr                   lcm
Data.Bifunctor.Bifunctor        Prelude.Applicative             Prelude.scanr1                  length
Data.Bifunctor.bimap            Prelude.Bool                    Prelude.seq                     lex
Data.Bifunctor.first            Prelude.Bounded                 Prelude.sequence                lines
Data.Bifunctor.second           Prelude.Char                    Prelude.sequenceA               log
Data.List.!!                    Prelude.Double                  Prelude.sequence_               logBase
Data.List.++                    Prelude.EQ                      Prelude.show                    lookup
Data.List.\\                    Prelude.Either                  Prelude.showChar                map
Data.List.all                   Prelude.Enum                    Prelude.showList                mapAccumL
Data.List.and                   Prelude.Eq                      Prelude.showParen               mapAccumR
Data.List.any                   Prelude.False                   Prelude.showString              mapM
Data.List.break                 Prelude.FilePath                Prelude.shows                   mapM_
Data.List.concat                Prelude.Float                   Prelude.showsPrec               mappend
Data.List.concatMap             Prelude.Floating                Prelude.significand             max
Data.List.cycle                 Prelude.Foldable                Prelude.signum                  maxBound
Data.List.delete                Prelude.Fractional              Prelude.sin                     maximum
Data.List.deleteBy              Prelude.Functor                 Prelude.sinh                    maximumBy
Data.List.deleteFirstsBy        Prelude.GT                      Prelude.snd                     maybe
Data.List.drop                  Prelude.IO                      Prelude.span                    mconcat
Data.List.dropWhile             Prelude.IOError                 Prelude.splitAt                 mempty
Data.List.dropWhileEnd          Prelude.Int                     Prelude.sqrt                    min
Data.List.elem                  Prelude.Integer                 Prelude.subtract                minBound
Data.List.elemIndex             Prelude.Integral                Prelude.succ                    minimum
Data.List.elemIndices           Prelude.Just                    Prelude.sum                     minimumBy
Data.List.filter                Prelude.LT                      Prelude.tail                    mod
Data.List.find                  Prelude.Left                    Prelude.take                    negate
Data.List.findIndex             Prelude.Maybe                   Prelude.takeWhile               not
Data.List.findIndices           Prelude.Monad                   Prelude.tan                     notElem
Data.List.foldl                 Prelude.MonadFail               Prelude.tanh                    nub
Data.List.foldl'                Prelude.Monoid                  Prelude.toEnum                  nubBy
Data.List.foldl1                Prelude.Nothing                 Prelude.toInteger               null
Data.List.foldl1'               Prelude.Num                     Prelude.toRational              odd
Data.List.foldr                 Prelude.Ord                     Prelude.traverse                or
Data.List.foldr1                Prelude.Ordering                Prelude.truncate                otherwise
Data.List.genericDrop           Prelude.Rational                Prelude.uncurry                 packetdata
Data.List.genericIndex          Prelude.Read                    Prelude.undefined               parse
Data.List.genericLength         Prelude.ReadS                   Prelude.unlines                 parselit
Data.List.genericReplicate      Prelude.Real                    Prelude.until                   parsetype
Data.List.genericSplitAt        Prelude.RealFloat               Prelude.unwords                 partition
Data.List.genericTake           Prelude.RealFrac                Prelude.unzip                   permutations
Data.List.group                 Prelude.Right                   Prelude.unzip3                  pi
Data.List.groupBy               Prelude.Semigroup               Prelude.userError               pred
Data.List.head                  Prelude.Show                    Prelude.words                   print
Data.List.init                  Prelude.ShowS                   Prelude.writeFile               product
Data.List.inits                 Prelude.String                  Prelude.zip                     properFraction
Data.List.insert                Prelude.Traversable             Prelude.zip3                    pure
Data.List.insertBy              Prelude.True                    Prelude.zipWith                 putChar
Data.List.intercalate           Prelude.Word                    Prelude.zipWith3                putStr
Data.List.intersect             Prelude.^                       Prelude.||                      putStrLn
Data.List.intersectBy           Prelude.^^                      Rational                        q
Data.List.intersperse           Prelude.abs                     Read                            quot
Data.List.isInfixOf             Prelude.acos                    ReadS                           quotRem
Data.List.isPrefixOf            Prelude.acosh                   Real                            read
Data.List.isSubsequenceOf       Prelude.all                     RealFloat                       readFile
Data.List.isSuffixOf            Prelude.and                     RealFrac                        readIO
Data.List.iterate               Prelude.any                     Right                           readList
Data.List.iterate'              Prelude.appendFile              Semigroup                       readLn
Data.List.last                  Prelude.asTypeOf                Show                            readParen
Data.List.length                Prelude.asin                    ShowS                           reads
Data.List.lines                 Prelude.asinh                   String                          readsPrec
Data.List.lookup                Prelude.atan                    Traversable                     realToFrac
Data.List.map                   Prelude.atan2                   True                            recip
Data.List.mapAccumL             Prelude.atanh                   Word                            rem
Data.List.mapAccumR             Prelude.break                   \\                              repeat
Data.List.maximum               Prelude.ceiling                 ^                               replicate
Data.List.maximumBy             Prelude.compare                 ^^                              return
Data.List.minimum               Prelude.concat                  abs                             reverse
Data.List.minimumBy             Prelude.concatMap               acos                            round
Data.List.notElem               Prelude.const                   acosh                           s
Data.List.nub                   Prelude.cos                     all                             scaleFloat
Data.List.nubBy                 Prelude.cosh                    and                             scanl
Data.List.null                  Prelude.curry                   any                             scanl'
Data.List.or                    Prelude.cycle                   appendFile                      scanl1
Data.List.partition             Prelude.decodeFloat             arr                             scanr
Data.List.permutations          Prelude.div                     asTypeOf                        scanr1
Data.List.product               Prelude.divMod                  asin                            second
Data.List.repeat                Prelude.drop                    asinh                           seq
Data.List.replicate             Prelude.dropWhile               atan                            sequence
Data.List.reverse               Prelude.either                  atan2                           sequenceA
Data.List.scanl                 Prelude.elem                    atanh                           sequence_
Data.List.scanl'                Prelude.encodeFloat             b2b                             show
Data.List.scanl1                Prelude.enumFrom                b2n                             showChar
Data.List.scanr                 Prelude.enumFromThen            bimap                           showList
Data.List.scanr1                Prelude.enumFromThenTo          break                           showParen
Data.List.sort                  Prelude.enumFromTo              ceiling                         showString
Data.List.sortBy                Prelude.error                   chop                            shows
Data.List.sortOn                Prelude.errorWithoutStackTrace  compare                         showsPrec
Data.List.span                  Prelude.even                    concat                          significand
Data.List.splitAt               Prelude.exp                     concatMap                       signum
Data.List.stripPrefix           Prelude.exponent                const                           sin
Data.List.subsequences          Prelude.fail                    cos                             sinh
Data.List.sum                   Prelude.filter                  cosh                            snd
Data.List.tail                  Prelude.flip                    curry                           sort
Data.List.tails                 Prelude.floatDigits             cycle                           sortBy
Data.List.take                  Prelude.floatRadix              decodeFloat                     sortOn
Data.List.takeWhile             Prelude.floatRange              delete                          span
Data.List.transpose             Prelude.floor                   deleteBy                        splitAt
Data.List.uncons                Prelude.fmap                    deleteFirstsBy                  sqrt
Data.List.unfoldr               Prelude.foldMap                 div                             stripPrefix
Data.List.union                 Prelude.foldl                   divMod                          subsequences
Data.List.unionBy               Prelude.foldl1                  drop                            subtract
Data.List.unlines               Prelude.foldr                   dropWhile                       succ
Data.List.unwords               Prelude.foldr1                  dropWhileEnd                    sum
Data.List.unzip                 Prelude.fromEnum                either                          tail
Data.List.unzip3                Prelude.fromInteger             elem                            tails
Data.List.unzip4                Prelude.fromIntegral            elemIndex                       take
Data.List.unzip5                Prelude.fromRational            elemIndices                     takeWhile
Data.List.unzip6                Prelude.fst                     encodeFloat                     tan
Data.List.unzip7                Prelude.gcd                     enumFrom                        tanh
Data.List.words                 Prelude.getChar                 enumFromThen                    toEnum
Data.List.zip                   Prelude.getContents             enumFromThenTo                  toInteger
Data.List.zip3                  Prelude.getLine                 enumFromTo                      toRational
Data.List.zip4                  Prelude.head                    error                           transpose
Data.List.zip5                  Prelude.id                      errorWithoutStackTrace          traverse
Data.List.zip6                  Prelude.init                    even                            truncate
Data.List.zip7                  Prelude.interact                exp                             typeid
Data.List.zipWith               Prelude.ioError                 exponent                        uncons
Data.List.zipWith3              Prelude.isDenormalized          fail                            uncurry
Data.List.zipWith4              Prelude.isIEEE                  filter                          undefined
Data.List.zipWith5              Prelude.isInfinite              find                            unfoldr
Data.List.zipWith6              Prelude.isNaN                   findIndex                       union
Data.List.zipWith7              Prelude.isNegativeZero          findIndices                     unionBy
Double                          Prelude.iterate                 first                           unlines
EQ                              Prelude.last                    flip                            until
Either                          Prelude.lcm                     floatDigits                     unwords
Enum                            Prelude.length                  floatRadix                      unzip
Eq                              Prelude.lex                     floatRange                      unzip3
False                           Prelude.lines                   floor                           unzip4
FilePath                        Prelude.log                     fmap                            unzip5
Float                           Prelude.logBase                 foldMap                         unzip6
Floating                        Prelude.lookup                  foldl                           unzip7
Foldable                        Prelude.map                     foldl'                          userError
Foo                             Prelude.mapM                    foldl1                          version
Fractional                      Prelude.mapM_                   foldl1'                         words
Functor                         Prelude.mappend                 foldr                           writeFile
GT                              Prelude.max                     foldr1                          zip
Ghci1.s                         Prelude.maxBound                fromEnum                        zip3
IO                              Prelude.maximum                 fromInteger                     zip4
IOError                         Prelude.maybe                   fromIntegral                    zip5
Int                             Prelude.mconcat                 fromRational                    zip6
Integer                         Prelude.mempty                  fst                             zip7
Integral                        Prelude.min                     gcd                             zipWith
Just                            Prelude.minBound                genericDrop                     zipWith3
LT                              Prelude.minimum                 genericIndex                    zipWith4
Left                            Prelude.mod                     genericLength                   zipWith5
Lit                             Prelude.negate                  genericReplicate                zipWith6
Maybe                           Prelude.not                     genericSplitAt                  zipWith7
Monad                           Prelude.notElem                 genericTake                     ||
MonadFail                       Prelude.null                    getChar
Monoid                          Prelude.odd                     getContents
Nothing                         Prelude.or                      getLine
Prelude Data.List Data.Bifunctor| parsetype typeid p
Prelude Data.List Data.Bifunctor|      
Prelude Data.List Data.Bifunctor|  typeid packetdata, p')
Prelude Data.List Data.Bifunctor| parse _ = Nothing
Prelude Data.List Data.Bifunctor| :}

<interactive>:86:2: error: parse error on input `='
Prelude Data.List Data.Bifunctor> :{
Prelude Data.List Data.Bifunctor| parse (a:b:c:x:y:z:p) =
Prelude Data.List Data.Bifunctor|  let
Prelude Data.List Data.Bifunctor|   version = b2n [a,b,c]
Prelude Data.List Data.Bifunctor|   typeid = b2n [x,y,z]
Prelude Data.List Data.Bifunctor|   (packetdata, p') = parsetype typeid p
Prelude Data.List Data.Bifunctor|  in
Prelude Data.List Data.Bifunctor|   Just (Packet version typeid packetdata, p')
Prelude Data.List Data.Bifunctor| parse _ = Nothing
Prelude Data.List Data.Bifunctor| :}

<interactive>:91:22: error:
    * Couldn't match expected type `(a, b1)' with actual type `Int'
    * In the expression: parsetype typeid p
      In a pattern binding: (packetdata, p') = parsetype typeid p
      In the expression:
        let
          version = b2n [...]
          typeid = b2n [...]
          (packetdata, p') = parsetype typeid p
        in Just (Packet version typeid packetdata, p')
    * Relevant bindings include
        packetdata :: a (bound at <interactive>:91:4)
        p' :: b1 (bound at <interactive>:91:16)
Prelude Data.List Data.Bifunctor> parselit (q:a:b:c:d:p) = first ([a,b,c,d] ++) if c then parselit p else ([], p)

<interactive>:96:47: error:
    Unexpected if expression in function application:
        if c then parselit p else ([], p)
    You could write it with parentheses
    Or perhaps you meant to enable BlockArguments?
Prelude Data.List Data.Bifunctor> parselit (q:a:b:c:d:p) = first ([a,b,c,d] ++) $ if c then parselit p else ([], p)
Prelude Data.List Data.Bifunctor> :{
Prelude Data.List Data.Bifunctor| parse (a:b:c:x:y:z:p) =
Prelude Data.List Data.Bifunctor|  let
Prelude Data.List Data.Bifunctor|   version = b2n [a,b,c]
Prelude Data.List Data.Bifunctor|   typeid = b2n [x,y,z]
Prelude Data.List Data.Bifunctor|   (packetdata, p') = parsetype typeid p
Prelude Data.List Data.Bifunctor|  in
Prelude Data.List Data.Bifunctor|   Just (Packet version typeid packetdata, p')
Prelude Data.List Data.Bifunctor| parse _ = Nothing
Prelude Data.List Data.Bifunctor|
Prelude Data.List Data.Bifunctor| parseall p = case parse p of
Prelude Data.List Data.Bifunctor|  Just (packet, p') -> packet:(parseall p')
Prelude Data.List Data.Bifunctor|  Nothing -> []
Prelude Data.List Data.Bifunctor|
Prelude Data.List Data.Bifunctor| parsen n p = case parse p of
Prelude Data.List Data.Bifunctor|  Just (packet, p') -> let (packets, p'') = parsen (n-1) p' in (packet:packets, p'')
Prelude Data.List Data.Bifunctor|  Nothing -> ([], p)
Prelude Data.List Data.Bifunctor|
Prelude Data.List Data.Bifunctor| parsetype 4 = first (Lit . b2n) . parselit
Prelude Data.List Data.Bifunctor| parsetype _ (False:p) = first (Op . parseall) . uncurry chop . first b2n $ chop 15 p
Prelude Data.List Data.Bifunctor| parsetype _ (True:p) = first Op . uncurry parsen . first b2n $ chop 11 p
Prelude Data.List Data.Bifunctor| :}

<interactive>:116:1: error:
    Equations for `parsetype' have different numbers of arguments
      <interactive>:116:1-42
      <interactive>:117:1-84
Prelude Data.List Data.Bifunctor> parsetype 4 = first (Lit . b2n) . parselit
Prelude Data.List Data.Bifunctor> :t parsetype
parsetype :: (Eq a, Num a) => a -> [Bool] -> (PacketData, [Bool])
Prelude Data.List Data.Bifunctor> parsetype _ (False:p) = first (Op . parseall) . uncurry chop . first b2n $ chop 15 p

<interactive>:122:37: error:
    Variable not in scope: parseall :: [Bool] -> [Packet]
Prelude Data.List Data.Bifunctor> :{
Prelude Data.List Data.Bifunctor| parse (a:b:c:x:y:z:p) =
Prelude Data.List Data.Bifunctor|  let
Prelude Data.List Data.Bifunctor|   version = b2n [a,b,c]
Prelude Data.List Data.Bifunctor|   typeid = b2n [x,y,z]
Prelude Data.List Data.Bifunctor|   (packetdata, p') = parsetype typeid p
Prelude Data.List Data.Bifunctor|  in
Prelude Data.List Data.Bifunctor|   Just (Packet version typeid packetdata, p')
Prelude Data.List Data.Bifunctor| parse _ = Nothing
Prelude Data.List Data.Bifunctor|
Prelude Data.List Data.Bifunctor| parseall p = case parse p of
Prelude Data.List Data.Bifunctor|  Just (packet, p') -> packet:(parseall p')
Prelude Data.List Data.Bifunctor|  Nothing -> []
Prelude Data.List Data.Bifunctor|
Prelude Data.List Data.Bifunctor| parsen n p = case parse p of
Prelude Data.List Data.Bifunctor|  Just (packet, p') -> let (packets, p'') = parsen (n-1) p' in (packet:packets, p'')
Prelude Data.List Data.Bifunctor|  Nothing -> ([], p)
Prelude Data.List Data.Bifunctor|
Prelude Data.List Data.Bifunctor| parsetype 4 = first (Lit . b2n) . parselit
Prelude Data.List Data.Bifunctor| parsetype _ = uncurry parseop . chop 1
Prelude Data.List Data.Bifunctor|
Prelude Data.List Data.Bifunctor| parseop False p = first (Op . parseall) . uncurry chop . first b2n $ chop 15 p
Prelude Data.List Data.Bifunctor| parseop True p = first Op . uncurry parsen . first b2n $ chop 11 p
Prelude Data.List Data.Bifunctor| :}

<interactive>:144:9: error:
    * Couldn't match expected type `[Bool]' with actual type `Bool'
    * In the pattern: False
      In an equation for `parseop':
          parseop False p
            = first (Op . parseall) . uncurry chop . first b2n $ chop 15 p

<interactive>:145:9: error:
    * Couldn't match expected type `[Bool]' with actual type `Bool'
    * In the pattern: True
      In an equation for `parseop':
          parseop True p = first Op . uncurry parsen . first b2n $ chop 11 p
Prelude Data.List Data.Bifunctor> import Data.Maybe
Prelude Data.List Data.Bifunctor Data.Maybe> :{
Prelude Data.List Data.Bifunctor Data.Maybe| parse (a:b:c:x:y:z:p) =
Prelude Data.List Data.Bifunctor Data.Maybe|  let
Prelude Data.List Data.Bifunctor Data.Maybe|   version = b2n [a,b,c]
Prelude Data.List Data.Bifunctor Data.Maybe|   typeid = b2n [x,y,z]
Prelude Data.List Data.Bifunctor Data.Maybe|   (packetdata, p') = parsetype typeid p
Prelude Data.List Data.Bifunctor Data.Maybe|  in
Prelude Data.List Data.Bifunctor Data.Maybe|   Just (Packet version typeid packetdata, p')
Prelude Data.List Data.Bifunctor Data.Maybe| parse _ = Nothing
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parseall p = case parse p of
Prelude Data.List Data.Bifunctor Data.Maybe|  Just (packet, p') -> packet:(parseall p')
Prelude Data.List Data.Bifunctor Data.Maybe|  Nothing -> []
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parsen n p = case parse p of
Prelude Data.List Data.Bifunctor Data.Maybe|  Just (packet, p') -> let (packets, p'') = parsen (n-1) p' in (packet:packets, p'')
Prelude Data.List Data.Bifunctor Data.Maybe|  Nothing -> ([], p)
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parsetype 4 = first (Lit . b2n) . parselit
Prelude Data.List Data.Bifunctor Data.Maybe| parsetype _ = uncurry parseop . fromJust . uncons
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parseop False p = first (Op . parseall) . uncurry chop . first b2n $ chop 15 p
Prelude Data.List Data.Bifunctor Data.Maybe| parseop True p = first Op . uncurry parsen . first b2n $ chop 11 p
Prelude Data.List Data.Bifunctor Data.Maybe| :}
Prelude Data.List Data.Bifunctor Data.Maybe> parse $ i2b "D2FE28"

<interactive>:172:1: error:
    * No instance for (Show Packet) arising from a use of `print'
    * In a stmt of an interactive GHCi command: print it
Prelude Data.List Data.Bifunctor Data.Maybe> :t parse $ i2b "D2FE28"
parse $ i2b "D2FE28" :: Maybe (Packet, [Bool])
Prelude Data.List Data.Bifunctor Data.Maybe> :{
Prelude Data.List Data.Bifunctor Data.Maybe| data Packet = Packet {version :: Int, typeid :: Int, packetdata :: PacketData} deriving (Show)
Prelude Data.List Data.Bifunctor Data.Maybe| data PacketData = Lit Int | Op [Packet] deriving (Show)
Prelude Data.List Data.Bifunctor Data.Maybe| :}
Prelude Data.List Data.Bifunctor Data.Maybe> :{
Prelude Data.List Data.Bifunctor Data.Maybe| parse (a:b:c:x:y:z:p) =
Prelude Data.List Data.Bifunctor Data.Maybe|  let
Prelude Data.List Data.Bifunctor Data.Maybe|   version = b2n [a,b,c]
Prelude Data.List Data.Bifunctor Data.Maybe|   typeid = b2n [x,y,z]
Prelude Data.List Data.Bifunctor Data.Maybe|   (packetdata, p') = parsetype typeid p
Prelude Data.List Data.Bifunctor Data.Maybe|  in
Prelude Data.List Data.Bifunctor Data.Maybe|   Just (Packet version typeid packetdata, p')
Prelude Data.List Data.Bifunctor Data.Maybe| parse _ = Nothing
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parseall p = case parse p of
Prelude Data.List Data.Bifunctor Data.Maybe|  Just (packet, p') -> packet:(parseall p')
Prelude Data.List Data.Bifunctor Data.Maybe|  Nothing -> []
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parsen n p = case parse p of
Prelude Data.List Data.Bifunctor Data.Maybe|  Just (packet, p') -> let (packets, p'') = parsen (n-1) p' in (packet:packets, p'')
Prelude Data.List Data.Bifunctor Data.Maybe|  Nothing -> ([], p)
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parsetype 4 = first (Lit . b2n) . parselit
Prelude Data.List Data.Bifunctor Data.Maybe| parsetype _ = uncurry parseop . fromJust . uncons
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parseop False p = first (Op . parseall) . uncurry chop . first b2n $ chop 15 p
Prelude Data.List Data.Bifunctor Data.Maybe| parseop True p = first Op . uncurry parsen . first b2n $ chop 11 p
Prelude Data.List Data.Bifunctor Data.Maybe| :}
Prelude Data.List Data.Bifunctor Data.Maybe> parse $ i2b "D2FE28"
Just (Packet {version = 6, typeid = 4, packetdata = Lit 2021},[False,False,False])
Prelude Data.List Data.Bifunctor Data.Maybe> parse $ i2b "8A004A801A8002F478"
Just (Packet {version = 4, typeid = 2, packetdata = Op [Packet {version = 1, typeid = 2, packetdata = Op [Packet {version = 5, typeid = 2, p [Packet {version = 6, typeid = 4, packetdata = Lit *** Exception: <interactive>:97:1-81: Non-exhaustive patterns in function parselit

Prelude Data.List Data.Bifunctor Data.Maybe> :{
Prelude Data.List Data.Bifunctor Data.Maybe| data Packet = Packet {version :: Int, typeid :: Int, packetdata :: PacketData} deriving (Show)
Prelude Data.List Data.Bifunctor Data.Maybe| data PacketData = Lit Int | Op [Packet] deriving (Show)
Prelude Data.List Data.Bifunctor Data.Maybe| 
Prelude Data.List Data.Bifunctor Data.Maybe| chop n a = (take n a, drop n a)
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parse (a:b:c:x:y:z:p) =
Prelude Data.List Data.Bifunctor Data.Maybe|  let
Prelude Data.List Data.Bifunctor Data.Maybe|   version = b2n [a,b,c]
Prelude Data.List Data.Bifunctor Data.Maybe|   typeid = b2n [x,y,z]
Prelude Data.List Data.Bifunctor Data.Maybe|   (packetdata, p') = parsetype typeid p
Prelude Data.List Data.Bifunctor Data.Maybe|   Just (Packet version typeid packetdata, p')
Prelude Data.List Data.Bifunctor Data.Maybe| parse _ = Nothing
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parseall p = case parse p of
Prelude Data.List Data.Bifunctor Data.Maybe|  Just (packet, p') -> packet:(parseall p')
Prelude Data.List Data.Bifunctor Data.Maybe|  Nothing -> []
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parsen n p = case parse p of
Prelude Data.List Data.Bifunctor Data.Maybe|  Just (packet, p') -> let (packets, p'') = parsen (n-1) p' in (packet:packets, p'')
Prelude Data.List Data.Bifunctor Data.Maybe|  Nothing -> ([], p)
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parsetype 4 = first (Lit . b2n) . parselit
Prelude Data.List Data.Bifunctor Data.Maybe| parsetype _ = uncurry parseop . fromJust . uncons
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parselit (q:a:b:c:d:p) = first ([a,b,c,d] ++) $ if c then parselit p else ([], p)
Prelude Data.List Data.Bifunctor Data.Maybe|
Prelude Data.List Data.Bifunctor Data.Maybe| parseop False p = first (Op . parseall) . uncurry chop . first b2n $ chop 15 p
Prelude Data.List Data.Bifunctor Data.Maybe| parseop True p = first Op . uncurry parsen . first b2n $ chop 11 p
Prelude Data.List Data.Bifunctor Data.Maybe| :}
Prelude Data.List Data.Bifunctor Data.Maybe> parse $ i2b "8A004A801A8002F478"
Just (Packet {version = 4, typeid = 2, packetdata = Op [Packet {version = 1, typeid = 2, packetdata = Op [Packet {version = 5, typeid = 2, 
packetdata = Op [Packet {version = 6, typeid = 4, packetdata = Lit *** Exception: <interactive>:230:1-81: Non-exhaustive patterns in function parselit

Prelude Data.List Data.Bifunctor Data.Maybe> :q
Leaving GHCi.
Ben/PRO/Stu/Advent of Code 2021> ghci .\Speed\16.hs
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
macro 'doc' overwrites builtin command.  Use ':def!' to overwrite.
Loaded GHCi configuration from C:\Users\Camto\AppData\Roaming\ghc\ghci.conf
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:28:22: error:
    * Ambiguous type variable `t0' arising from a use of `concatMap'
      prevents the constraint `(Foldable t0)' from being solved.
      Relevant bindings include
        i2b :: t0 Char -> [Bool] (bound at Speed\16.hs:28:1)
      Probable fix: use a type annotation to specify what `t0' should be.
      These potential instances exist:
        instance Foldable (Either a) -- Defined in `Data.Foldable'
        instance Foldable Maybe -- Defined in `Data.Foldable'
        instance Foldable ((,) a) -- Defined in `Data.Foldable'
        ...plus one other
        ...plus 26 instances involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    * In the second argument of `(.)', namely `concatMap h2b'
      In the expression: map (== '1') . concatMap h2b
      In an equation for `i2b': i2b = map (== '1') . concatMap h2b
   |
28 | i2b = map (== '1') . concatMap h2b
   |                      ^^^^^^^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )
Ok, one module loaded.
*Main> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:54:19: error:
    * No instance for (Num [Bool]) arising from the literal `0'
    * In the expression: 0
      In the expression: ([], 0)
      In an equation for `parselit': parselit p = ([], 0)
   |
54 | parselit p = ([], 0)
   |                   ^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )
Ok, one module loaded.
*Main> solve "8A004A801A8002F478"      
Just (Packet {version = 4, typeid = 2, packetdata = Op [Packet {version = 1, typeid = 2, packetdata = Op [Packet {version = 5, typeid = 2, 
packetdata = Op [Packet {version = 6, typeid = 4, packetdata = Lit 15}]}]}]},[False,False,False])
*Main> solve "A0016C880162017C3686B18A3D4780"
Just (Packet {version = 5, typeid = 0, packetdata = Op [Packet {version = 1, typeid = 0, packetdata = Op [Packet {version = 3, typeid = 0, 
packetdata = Op [Packet {version = 7, typeid = 4, packetdata = Lit 111391521},Packet {version = 7, typeid = 2, packetdata = Op []}]}]}]},[False,False,False,False,False,False,False])
*Main> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:61:17: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Lit _
      In a case alternative: Lit _ -> 0
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
61 |                 Lit _ -> 0
   |                 ^^^^^

Speed\16.hs:62:17: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Op packets
      In a case alternative:
          Op packets -> sum $ map totalversions packets
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
62 |                 Op packets -> sum $ map totalversions packets
   |                 ^^^^^^^^^^

Speed\16.hs:64:25: error:
    * Couldn't match type `Maybe (Packet, [Bool])' with `Packet'
      Expected type: String -> Packet
        Actual type: String -> Maybe (Packet, [Bool])
    * In the second argument of `(.)', namely `parse . i2b'
      In the expression: totalversions . parse . i2b
      In an equation for `solve': solve = totalversions . parse . i2b
   |
64 | solve = totalversions . parse . i2b
   |                         ^^^^^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:61:17: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Lit _
      In a case alternative: Lit _ -> 0
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
61 |                 Lit _ -> 0
   |                 ^^^^^

Speed\16.hs:62:17: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Op packets
      In a case alternative:
          Op packets -> sum $ map totalversions packets
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
62 |                 Op packets -> sum $ map totalversions packets
   |                 ^^^^^^^^^^

Speed\16.hs:64:42: error:
    * Couldn't match type `Maybe (Packet, [Bool])'
                     with `(Maybe Packet, b0)'
      Expected type: String -> (Maybe Packet, b0)
        Actual type: String -> Maybe (Packet, [Bool])
    * In the second argument of `(.)', namely `parse . i2b'
      In the second argument of `(.)', namely `fst . parse . i2b'
      In the second argument of `(.)', namely
        `fromJust . fst . parse . i2b'
   |
64 | solve = totalversions . fromJust . fst . parse . i2b
   |                                          ^^^^^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:61:17: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Lit _
      In a case alternative: Lit _ -> 0
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
61 |                 Lit _ -> 0
   |                 ^^^^^

Speed\16.hs:62:17: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Op packets
      In a case alternative:
          Op packets -> sum $ map totalversions packets
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
62 |                 Op packets -> sum $ map totalversions packets
   |                 ^^^^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:61:17: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Lit _
      In a case alternative: Lit _ -> 0
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
61 |                 Lit _ -> 0
   |                 ^^^^^

Speed\16.hs:62:17: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Op packets
      In a case alternative:
          Op packets -> sum $ map totalversions packets
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
62 |                 Op packets -> sum $ map totalversions packets
   |                 ^^^^^^^^^^
Failed, no modules loaded.
Prelude> a Packet{} = packetdata

<interactive>:10:3: error: Not in scope: data constructor `Packet'
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:62:25: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Lit _
      In a case alternative: Lit _ -> 0
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
62 |                         Lit _ -> 0
   |                         ^^^^^

Speed\16.hs:63:25: error:
    * Couldn't match expected type `Packet -> PacketData'
                  with actual type `PacketData'
    * In the pattern: Op packets
      In a case alternative:
          Op packets -> sum $ map totalversions packets
      In the expression:
        case packetdata of
          Lit _ -> 0
          Op packets -> sum $ map totalversions packets
   |
63 |                         Op packets -> sum $ map totalversions packets
   |                         ^^^^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:59:22: error: Not in scope: `v'
   |
59 | totalversions Packet{v = version, pd = packetdata} = v + rec where
   |                      ^

Speed\16.hs:59:35: error:
    Not in scope: `pd'
    Perhaps you meant one of these:
      `id' (imported from Prelude), `pi' (imported from Prelude)
   |
59 | totalversions Packet{v = version, pd = packetdata} = v + rec where
   |                                   ^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )
Ok, one module loaded.
*Main> solve "A0016C880162017C3686B18A3D4780"
23
*Main> parse $ i2b "A0016C880162017C3686B18A3D4780"
Just (Packet {version = 5, typeid = 0, packetdata = Op [Packet {version = 1, typeid = 0, packetdata = Op [Packet {version = 3, typeid = 0, 
packetdata = Op [Packet {version = 7, typeid = 4, packetdata = Lit 111391521},Packet {version = 7, typeid = 2, packetdata = Op []}]}]}]},[False,False,False,False,False,False,False])
*Main> solve "8A004A801A8002F478"
16
*Main> solve "620080001611562C8802118E34"
7
*Main> parse $ i2b "620080001611562C8802118E34"
Just (Packet {version = 3, typeid = 0, packetdata = Op [Packet {version = 0, typeid = 0, packetdata = Op [Packet {version = 0, typeid = 4, 
packetdata = Lit 2661}]},Packet {version = 1, typeid = 0, packetdata = Op [Packet {version = 0, typeid = 4, packetdata = Lit 12},Packet {version = 3, typeid = 4, packetdata = Lit 13}]}]},[False,False])
*Main> concatMap h2b "620080001611562C8802118E34"
"01100010000000001000000000000000000101100001000101010110001011001000100000000010000100011000111000110100"
*Main> parse "01100010000000001000000000000000000101100001000101010110001011001000100000000010000100011000111000110100"

<interactive>:20:7: error:
    * Couldn't match type `Char' with `Bool'
      Expected type: [Bool]
        Actual type: [Char]
    * In the first argument of `parse', namely
        `"01100010000000001000000000000000000101100001000101010110001011001000100000000010000100011000111000110100"'
      In the expression:
        parse
          "01100010000000001000000000000000000101100001000101010110001011001000100000000010000100011000111000110100"
      In an equation for `it':
          it
            = parse
                "01100010000000001000000000000000000101100001000101010110001011001000100000000010000100011000111000110100"
*Main> a=i2b "620080001611562C8802118E34"
*Main> a
[False,True,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False]
*Main> parse a
Just (Packet {version = 3, typeid = 0, packetdata = Op [Packet {version = 0, typeid = 0, packetdata = Op [Packet {version = 0, typeid = 4, 
packetdata = Lit 2661}]},Packet {version = 1, typeid = 0, packetdata = Op [Packet {version = 0, typeid = 4, packetdata = Lit 12},Packet {version = 3, typeid = 4, packetdata = Lit 13}]}]},[False,False])
*Main> parse $ drop 6 a
Just (Packet {version = 4, typeid = 0, packetdata = Op [Packet {version = 0, typeid = 0, packetdata = Op [Packet {version = 2, typeid = 6, 
packetdata = Op [Packet {version = 0, typeid = 0, packetdata = Op [Packet {version = 1, typeid = 6, packetdata = Op []}]}]}]}]},[])        
*Main> chop 15 $ drop 6 a
([True,False,False,False,False,False,False,False,False,False,True,False,False,False,False],[False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> fst b2n . chop 15 $ drop 6 a

<interactive>:26:5: error:
    * Couldn't match expected type `(([Bool], [Bool]) -> c, b0)'
                  with actual type `[Bool] -> Int'
    * Probable cause: `b2n' is applied to too few arguments
      In the first argument of `fst', namely `b2n'
      In the first argument of `(.)', namely `fst b2n'
      In the expression: fst b2n . chop 15
    * Relevant bindings include it :: c (bound at <interactive>:26:1)
*Main> first b2n . chop 15 $ drop 6 a
(16400,[False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> first b2n . chop 11 $ drop 6 a
(1025,[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> first b2n . chop 11 $ drop 7 a
(2,[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> uncurry chop . first b2n . chop 11 $ drop 7 a
([False,False],[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> first b2n . chop 11 $ drop 7 a
(2,[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> snd . first b2n . chop 11 $ drop 7 a
[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False]
*Main> parse snd . first b2n . chop 11 $ drop 7 a

<interactive>:33:1: error:
    * Couldn't match expected type `(Int, [Bool]) -> c'
                  with actual type `Maybe (Packet, [Bool])'
    * Possible cause: `parse' is applied to too many arguments
      In the first argument of `(.)', namely `parse snd'
      In the expression: parse snd . first b2n . chop 11
      In the expression: parse snd . first b2n . chop 11 $ drop 7 a
    * Relevant bindings include it :: c (bound at <interactive>:33:1)

<interactive>:33:7: error:
    * Couldn't match expected type `[Bool]'
                  with actual type `(a0, b0) -> b0'
    * Probable cause: `snd' is applied to too few arguments
      In the first argument of `parse', namely `snd'
      In the first argument of `(.)', namely `parse snd'
      In the expression: parse snd . first b2n . chop 11
*Main> parse . snd . first b2n . chop 11 $ drop 7 a
Just (Packet {version = 0, typeid = 0, packetdata = Op [Packet {version = 0, typeid = 4, packetdata = Lit 2661}]},[False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> snd . first b2n . chop 11 $ drop 7 a        
[False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False]
*Main> drop 7 . snd . first b2n . chop 11 $ drop 7 a 
[False,False,False,False,False,False,False,False,False,False,True,False,True,True,False,False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False]
*Main> chop 15 . drop 7 . snd . first b2n . chop 11 $ drop 7 a
([False,False,False,False,False,False,False,False,False,False,True,False,True,True,False],[False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> first b2n . chop 15 . drop 7 . snd . first b2n . chop 11 $ drop 7 a
(22,[False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True,False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> uncurry chop . first b2n . chop 15 . drop 7 . snd . first b2n . chop 11 $ drop 7 a
([False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True],[False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> parseall . uncurry chop . first b2n . chop 15 . drop 7 . snd . first b2n . chop 11 $ drop 7 a

<interactive>:40:12: error:
    * Couldn't match type `([Bool], [Bool])' with `[Bool]'
      Expected type: [Bool] -> [Bool]
        Actual type: [Bool] -> ([Bool], [Bool])
    * In the second argument of `(.)', namely
        `uncurry chop
           . first b2n . chop 15 . drop 7 . snd . first b2n . chop 11'
      In the expression:
        parseall
          . uncurry chop
              . first b2n . chop 15 . drop 7 . snd . first b2n . chop 11
      In the expression:
        parseall
          . uncurry chop
              . first b2n . chop 15 . drop 7 . snd . first b2n . chop 11
          $ drop 7 a
*Main> first parseall . uncurry chop . first b2n . chop 15 . drop 7 . snd . first b2n . chop 11 $ drop 7 a
([Packet {version = 0, typeid = 4, packetdata = Lit 2661}],[False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> uncurry chop . first b2n . chop 15 . drop 7 . snd . first b2n . chop 11 $ drop 7 a                 
([False,False,False,True,False,False,False,True,False,True,False,True,False,True,True,False,False,False,True,False,True,True],[False,False,True,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,True,True,False,False,False,True,True,True,False,False,False,True,True,False,True,False,False])
*Main> parse [False,False,False,True,False,False,False,True,False,True,False]
Just (Packet {version = 0, typeid = 4, packetdata = Lit 10},[])
*Main> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )
Ok, one module loaded.
*Main> solve "620080001611562C8802118E34"
12
*Main> solve "C0015000016115A2E0802F182340"
23
*Main> solve "220D700071F39F9C6BC92D4A6713C737B3E98783004AC0169B4B99F93CFC31AC4D8A4BB89E9D654D216B80131DC0050B20043E27C1F83240086C468A31132070D9CDC90D70980293F8890"
1014
*Main> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:68:39: error:
    Variable not in scope: packetscase :: [Packet]
   |
68 |                         ns = map eval packetscase
   |                                       ^^^^^^^^^^^

Speed\16.hs:75:47: error:
    * Couldn't match expected type `Int' with actual type `Bool'
    * In the second argument of `($)', namely `a > b'
      In the expression: toEnum $ a > b
      In a case alternative: 5 -> toEnum $ a > b
   |
75 |                                 5 -> toEnum $ a > b
   |                                               ^^^^^

Speed\16.hs:76:47: error:
    * Couldn't match expected type `Int' with actual type `Bool'
    * In the second argument of `($)', namely `a < b'
      In the expression: toEnum $ a < b
      In a case alternative: 6 -> toEnum $ a < b
   |
76 |                                 6 -> toEnum $ a < b
   |                                               ^^^^^

Speed\16.hs:77:47: error:
    * Couldn't match expected type `Int' with actual type `Bool'
    * In the second argument of `($)', namely `a == b'
      In the expression: toEnum $ a == b
      In a case alternative: 7 -> toEnum $ a == b
   |
77 |                                 7 -> toEnum $ a == b
   |                                               ^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:68:39: error:
    Variable not in scope: packetscase :: [Packet]
   |
68 |                         ns = map eval packetscase
   |                                       ^^^^^^^^^^^

Speed\16.hs:75:38: error:
    * Couldn't match expected type `t a -> a' with actual type `Int'
    * In the expression: fromEnum $ a > b
      In a case alternative: 5 -> fromEnum $ a > b
      In the expression:
        case op of
          0 -> sum
          1 -> product
          2 -> minimum
          3 -> maximum
          5 -> fromEnum $ a > b
          6 -> fromEnum $ a < b
          7 -> fromEnum $ a == b
    * Relevant bindings include
        fn :: t a -> a (bound at Speed\16.hs:70:25)
   |
75 |                                 5 -> fromEnum $ a > b
   |                                      ^^^^^^^^^^^^^^^^

Speed\16.hs:76:38: error:
    * Couldn't match expected type `t a -> a' with actual type `Int'
    * In the expression: fromEnum $ a < b
      In a case alternative: 6 -> fromEnum $ a < b
      In the expression:
        case op of
          0 -> sum
          1 -> product
          2 -> minimum
          3 -> maximum
          5 -> fromEnum $ a > b
          6 -> fromEnum $ a < b
          7 -> fromEnum $ a == b
    * Relevant bindings include
        fn :: t a -> a (bound at Speed\16.hs:70:25)
   |
76 |                                 6 -> fromEnum $ a < b
   |                                      ^^^^^^^^^^^^^^^^

Speed\16.hs:77:38: error:
    * Couldn't match expected type `t a -> a' with actual type `Int'
    * In the expression: fromEnum $ a == b
      In a case alternative: 7 -> fromEnum $ a == b
      In the expression:
        case op of
          0 -> sum
          1 -> product
          2 -> minimum
          3 -> maximum
          5 -> fromEnum $ a > b
          6 -> fromEnum $ a < b
          7 -> fromEnum $ a == b
    * Relevant bindings include
        fn :: t a -> a (bound at Speed\16.hs:70:25)
   |
77 |                                 7 -> fromEnum $ a == b
   |                                      ^^^^^^^^^^^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:75:38: error:
    * Couldn't match expected type `t a -> a' with actual type `Int'
    * In the expression: fromEnum $ a > b
      In a case alternative: 5 -> fromEnum $ a > b
      In the expression:
        case op of
          0 -> sum
          1 -> product
          2 -> minimum
          3 -> maximum
          5 -> fromEnum $ a > b
          6 -> fromEnum $ a < b
          7 -> fromEnum $ a == b
    * Relevant bindings include
        fn :: t a -> a (bound at Speed\16.hs:70:25)
   |
75 |                                 5 -> fromEnum $ a > b
   |                                      ^^^^^^^^^^^^^^^^

Speed\16.hs:76:38: error:
    * Couldn't match expected type `t a -> a' with actual type `Int'
    * In the expression: fromEnum $ a < b
      In a case alternative: 6 -> fromEnum $ a < b
      In the expression:
        case op of
          0 -> sum
          1 -> product
          2 -> minimum
          3 -> maximum
          5 -> fromEnum $ a > b
          6 -> fromEnum $ a < b
          7 -> fromEnum $ a == b
    * Relevant bindings include
        fn :: t a -> a (bound at Speed\16.hs:70:25)
   |
76 |                                 6 -> fromEnum $ a < b
   |                                      ^^^^^^^^^^^^^^^^

Speed\16.hs:77:38: error:
    * Couldn't match expected type `t a -> a' with actual type `Int'
    * In the expression: fromEnum $ a == b
      In a case alternative: 7 -> fromEnum $ a == b
      In the expression:
        case op of
          0 -> sum
          1 -> product
          2 -> minimum
          3 -> maximum
          5 -> fromEnum $ a > b
          6 -> fromEnum $ a < b
          7 -> fromEnum $ a == b
    * Relevant bindings include
        fn :: t a -> a (bound at Speed\16.hs:70:25)
   |
77 |                                 7 -> fromEnum $ a == b
   |                                      ^^^^^^^^^^^^^^^^^
Failed, no modules loaded.
Prelude> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )
Ok, one module loaded.
*Main> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )
Ok, one module loaded.
*Main> solve "220D700071F39F9C6BC92D4A6713C737B3E98783004AC0169B4B99F93CFC31AC4D8A4BB89E9D654D216B80131DC0050B20043E27C1F83240086C468A310""
<interactive>:53:1: error:
    Variable not in scope: solve :: [Char] -> t
*Main> solve "220D700071F39F9C6BC92D4A6713C737B3E98783004AC0169B4B99F93CFC31AC4D8A4BB89E9D654D216B80131DC0050B20043E27C1F83240086C468A311CC0188DB0BA12B00719221D3F7AF776DC5DE635094A7D2370082795A52911791ECB7EDA9CFD634BDED14030047C01498EE203931BF7256189A593005E116802D34673999A3A805126EB2B5BEEBB823CB561E9F2165492CE00E6918C011926CA005465B0BB2D85D700B675DA72DD7E9DBE377D62B27698F0D4BAD100735276B4B93C0FF002FF359F3BCFF0DC802ACC002CE3546B92FCB7590C380210523E180233FD21D0040001098ED076108002110960D45F988EB14D9D9802F232A32E802F2FDBEBA7D3B3B7FB06320132B0037700043224C5D8F2000844558C704A6FEAA800D2CFE27B921CA872003A90C6214D62DA8AA9009CF600B8803B10E144741006A1C47F85D29DCF7C9C40132680213037284B3D488640A1008A314BC3D86D9AB6492637D331003E79300012F9BDE8560F1009B32B09EC7FC0151006A0EC6082A0008744287511CC0269810987789132AC600BD802C00087C1D88D05C001088BF1BE284D298005FB1366B353798689D8A84D5194C017D005647181A931895D588E7736C6A5008200F0B802909F97B35897CFCBD9AC4A26DD880259A0037E49861F4E4349A6005CFAD180333E95281338A930EA400824981CC8A2804523AA6F5B3691CF5425B05B3D9AF8DD400F9EDA1100789800D2CBD30E32F4C3ACF52F9FF64326009D802733197392438BF22C52D5AD2D8524034E800C8B202F604008602A6CC00940256C008A9601FF8400D100240062F50038400970034003CE600C70C00F600760C00B98C563FB37CE4BD1BFA769839802F400F8C9CA79429B96E0A93FAE4A5F32201428401A8F508A1B0002131723B43400043618C2089E40143CBA748B3CE01C893C8904F4E1B2D300527AB63DA0091253929E42A53929E420"

<interactive>:54:1: error:
    Variable not in scope: solve :: [Char] -> t
*Main> part2 "220D700071F39F9C6BC92D4A6713C737B3E98783004AC0169B4B99F93CFC31AC4D8A4BB89E9D654D216B80131DC0050B20043E27C1F83240086C468A311CC0188DB0BA12B00719221D3F7AF776DC5DE635094A7D2370082795A52911791ECB7EDA9CFD634BDED14030047C01498EE203931BF7256189A593005E116802D34673999A3A805126EB2B5BEEBB823CB561E9F2165492CE00E6918C011926CA005465B0BB2D85D700B675DA72DD7E9DBE377D62B27698F0D4BAD100735276B4B93C0FF002FF359F3BCFF0DC802ACC002CE3546B92FCB7590C380210523E180233FD21D0040001098ED076108002110960D45F988EB14D9D9802F232A32E802F2FDBEBA7D3B3B7FB06320132B0037700043224C5D8F2000844558C704A6FEAA800D2CFE27B921CA872003A90C6214D62DA8AA9009CF600B8803B10E144741006A1C47F85D29DCF7C9C40132680213037284B3D488640A1008A314BC3D86D9AB6492637D331003E79300012F9BDE8560F1009B32B09EC7FC0151006A0EC6082A0008744287511CC0269810987789132AC600BD802C00087C1D88D05C001088BF1BE284D298005FB1366B353798689D8A84D5194C017D005647181A931895D588E7736C6A5008200F0B802909F97B35897CFCBD9AC4A26DD880259A0037E49861F4E4349A6005CFAD180333E95281338A930EA400824981CC8A2804523AA6F5B3691CF5425B05B3D9AF8DD400F9EDA1100789800D2CBD30E32F4C3ACF52F9FF64326009D802733197392438BF22C52D5AD2D8524034E800C8B202F604008602A6CC00940256C008A9601FF8400D100240062F50038400970034003CE600C70C00F600760C00B98C563FB37CE4BD1BFA769839802F400F8C9CA79429B96E0A93FAE4A5F32201428401A8F508A1B0002131723B43400043618C2089E40143CBA748B3CE01C893C8904F4E1B2D300527AB63DA0091253929E42A53929E420"
23209846897
*Main> part2 "C200B40A82"
3
*Main> part2 "9C0141080250320F1802104A08"
*** Exception: Speed\16.hs:33:1-23: Non-exhaustive patterns in function first2

*Main> parseinput "9C0141080250320F1802104A08"
Packet {version = 4, typeid = 7, packetdata = Op [Packet {version = 2, typeid = 0, packetdata = Op [Packet {version = 2, typeid = 4, packetdata = Lit 1},Packet {version = 4, typeid = 4, packetdata = Lit 3},Packet {version = 6, typeid = 1, packetdata = Op [Packet {version = 0, typeid = 4, packetdata = Lit 2},Packet {version = 2, typeid = 4, packetdata = Lit 2}]}]}]}
*Main> parse $ i2b "9C0141080250320F1802104A08"
Just (Packet {version = 4, typeid = 7, packetdata = Op [Packet {version = 2, typeid = 0, packetdata = Op [Packet {version = 2, typeid = 4, 
packetdata = Lit 1},Packet {version = 4, typeid = 4, packetdata = Lit 3},Packet {version = 6, typeid = 1, packetdata = Op [Packet {version 
= 0, typeid = 4, packetdata = Lit 2},Packet {version = 2, typeid = 4, packetdata = Lit 2}]}]}]},[False,False])
*Main> i2b "9C0141080250320F1802104A08"        
[True,False,False,True,True,True,False,False,False,False,False,False,False,False,False,True,False,True,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False,False,False]
*Main> drop 7 $ i2b "9C0141080250320F1802104A08"
[False,False,False,False,False,False,False,False,True,False,True,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False,False,False]
*Main> chop 15 . drop 7 $ i2b "9C0141080250320F1802104A08"
([False,False,False,False,False,False,False,False,True,False,True,False,False,False,False],[False,True,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False,False,False])
*Main> first b2n . chop 15 . drop 7 $ i2b "9C0141080250320F1802104A08"
(80,[False,True,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False,False,False])
*Main> uncurry chop . first b2n . chop 15 . drop 7 $ i2b "9C0141080250320F1802104A08"
([False,True,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False],[False,False])
*Main> first parseall . uncurry chop . first b2n . chop 15 . drop 7 $ i2b "9C0141080250320F1802104A08"
([Packet {version = 2, typeid = 0, packetdata = Op [Packet {version = 2, typeid = 4, packetdata = Lit 1},Packet {version = 4, typeid = 4, packetdata = Lit 3},Packet {version = 6, typeid = 1, packetdata = Op [Packet {version = 0, typeid = 4, packetdata = Lit 2},Packet {version = 2, typeid = 4, packetdata = Lit 2}]}]}],[False,False])
*Main> uncurry chop . first b2n . chop 15 . drop 7 $ i2b "9C0141080250320F1802104A08"                 
([False,True,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False],[False,False])
*Main> a=[False,True,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,llFsaF]
*Main> a
[False,True,False,False,False,False,True,False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False]
*Main> drop 7 a
[False,False,False,False,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False]
*Main> parse a 
Just (Packet {version = 2, typeid = 0, packetdata = Op [Packet {version = 2, typeid = 4, packetdata = Lit 1},Packet {version = 4, typeid = 
4, packetdata = Lit 3},Packet {version = 6, typeid = 1, packetdata = Op [Packet {version = 0, typeid = 4, packetdata = Lit 2},Packet {version = 2, typeid = 4, packetdata = Lit 2}]}]},[])
*Main> chop 7 $ drop 7 a
([False,False,False,False,False,False,False],[False,False,True,False,False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False])
*Main> chop 11 $ drop 7 a
([False,False,False,False,False,False,False,False,False,True,False],[False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False])
*Main> first b2n . chop 11 $ drop 7 a
(2,[False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False])
*Main> uncurry parsen . first b2n . chop 11 $ drop 7 a
([Packet {version = 2, typeid = 4, packetdata = Lit 1},Packet {version = 4, typeid = 4, packetdata = Lit 3},Packet {version = 6, typeid = 1, packetdata = Op [Packet {version = 0, typeid = 4, packetdata = Lit 2},Packet {version = 2, typeid = 4, packetdata = Lit 2}]}],[])
*Main> length . uncurry parsen . first b2n . chop 11 $ drop 7 a
1
*Main> first b2n . chop 11 $ drop 7 a                          
(2,[False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False])
*Main> parse . snd . chop 11 $ drop 7 a
Just (Packet {version = 2, typeid = 4, packetdata = Lit 1},[True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False])
*Main> snd . fromJust . parse . snd . chop 11 $ drop 7 a
[True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False]
*Main> parse . snd . fromJust . parse . snd . chop 11 $ drop 7 a
Just (Packet {version = 4, typeid = 4, packetdata = Lit 3},[True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False])
*Main> parsen 2 [False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,,uT,]
([Packet {version = 2, typeid = 4, packetdata = Lit 1},Packet {version = 4, typeid = 4, packetdata = Lit 3},Packet {version = 6, typeid = 1, packetdata = Op [Packet {version = 0, typeid = 4, packetdata = Lit 2},Packet {version = 2, typeid = 4, packetdata = Lit 2}]}],[])        
*Main> length $ parsen 2 [False,True,False,True,False,False,False,False,False,False,True,True,False,False,True,False,False,False,False,False,True,True,True,True,False,False,False,True,True,False,False,False,False,False,False,False,False,False,True,False,False,False,False,True,False,False,False,False,False,True,False,False,True,False,True,False,False,False,False,False,True,False]
1
*Main> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )

Speed\16.hs:51:1: warning: [-Woverlapping-patterns]
    Pattern match is redundant
    In an equation for `parsen': parsen 0 p = ...
   |
51 | parsen 0 p = ([], p)
   | ^^^^^^^^^^^^^^^^^^^^
Ok, one module loaded.
*Main> :r
[1 of 1] Compiling Main             ( Speed\16.hs, interpreted )
Ok, one module loaded.
*Main> part2 "9C0141080250320F1802104A08" 
1
*Main> part2 "9C005AC2F8F0"
0
0
*Main> part2 "CE00C43D881120"
9
*Main> part2 "220D700071F39F9C6BC92D4A6713C737B3E98783004AC0169B4B99F93CFC31AC4D8A4BB89E9D654D216B80131DC0050B20043E27C1F83240086C468A311C"1922490999789
*Main>