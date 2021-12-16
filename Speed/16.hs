import Data.List
import Control.Arrow
import Data.Maybe

data Packet = Packet Int Packetdata
data Packetdata = Lit Int | Op Packetop [Packet]
type Packetop = [Int] -> Int

type Bits = [Bool]
type Parseresult a = (a, Bits)
type Parse a = Bits -> Parseresult a

hex2bin :: String -> Bits
hex2bin = concatMap hexdigit2bin

hexdigit2bin :: Char -> Bits
hexdigit2bin digit = map (== '1') $ case digit of {
	'0' -> "0000"; '4' -> "0100"; '8' -> "1000"; 'C' -> "1100";
	'1' -> "0001"; '5' -> "0101"; '9' -> "1001"; 'D' -> "1101";
	'2' -> "0010"; '6' -> "0110"; 'A' -> "1010"; 'E' -> "1110";
	'3' -> "0011"; '7' -> "0111"; 'B' -> "1011"; 'F' -> "1111"
}

bin2int :: Bits -> Int
bin2int = foldl' (\n bit -> n*2 + fromEnum bit) 0

chop :: Int -> [a] -> ([a], [a])
chop n list = (take n list, drop n list)

parse :: Bits -> Maybe (Parseresult Packet)
parse (v1:v2:v3: t1:t2:t3: bits) =
	let
		version = bin2int [v1,v2,v3]
		typeid = bin2int [t1,t2,t3]
	in
		Just . first (Packet version) $ parsedata typeid bits
parse _ = Nothing

parsedata :: Int -> Parse Packetdata
parsedata 4 = first (Lit . bin2int) . parsechunks
parsedata n = first (Op $ n2op n) . uncurry parsesubpackets . fromJust . uncons

parsechunks :: Parse Bits
parsechunks (continue:bits) =
	let (bitgroup, bits') = chop 4 bits in
	first (bitgroup ++) $ if continue then parsechunks bits' else ([], bits')

parsesubpackets :: Bool -> Parse [Packet]
parsesubpackets False = first parseall . uncurry chop . first bin2int . chop 15
parsesubpackets True = uncurry parsen . first bin2int . chop 11

parseall :: Bits -> [Packet]
parseall bits = case parse bits of
	Just (packet, bits') -> packet:(parseall bits')
	Nothing -> []

parsen :: Int -> Parse [Packet]
parsen 0 bits = ([], bits)
parsen n bits = case parse bits of
	Just (packet, bits') ->
		let (packets, bits'') = parsen (n-1) bits'
		in (packet:packets, bits'')
	Nothing -> ([], bits)

n2op :: Int -> Packetop
n2op n = case n of
	0 -> sum
	1 -> product
	2 -> minimum
	3 -> maximum
	5 -> liftCmp (>)
	6 -> liftCmp (<)
	7 -> liftCmp (==)

liftCmp cmp = fromEnum . uncurry cmp . (head &&& last)

totalversions :: Packet -> Int
totalversions (Packet version (Lit _)) = version
totalversions (Packet version (Op _ packets)) = (version +) . sum $ map totalversions packets

eval :: Packet -> Int
eval (Packet _ packetdata) = case packetdata of
	Lit n -> n
	Op op packets -> op $ map eval packets

parseinput :: String -> Packet
parseinput = fst . fromJust . parse . hex2bin

main = do
	input <- parseinput <$> readFile "input.txt"
	print $ totalversions input -- Part 1
	print $ eval input -- Part 2