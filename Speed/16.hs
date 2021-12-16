import Data.List
import Data.Bifunctor
import Data.Maybe

data Packet = Packet {version :: Int, typeid :: Int, packetdata :: PacketData} deriving (Show)
data PacketData = Lit Int | Op [Packet] deriving (Show)

h2b c = case c of
	'0' -> "0000"
	'1' -> "0001"
	'2' -> "0010"
	'3' -> "0011"
	'4' -> "0100"
	'5' -> "0101"
	'6' -> "0110"
	'7' -> "0111"
	'8' -> "1000"
	'9' -> "1001"
	'A' -> "1010" 
	'B' -> "1011"
	'C' -> "1100"
	'D' -> "1101"
	'E' -> "1110"
	'F' -> "1111"

b2n = foldl' (\n e -> n * 2 + fromEnum e) 0

i2b :: String -> [Bool]
i2b = map (== '1') . concatMap h2b

chop n a = (take n a, drop n a)

first2 (a:b:_) = (a, b)

parse (a:b:c:x:y:z:p) =
	let
		version = b2n [a,b,c]
		typeid = b2n [x,y,z]
		(packetdata, p') = parsetype typeid p
	in
		Just (Packet version typeid packetdata, p')
parse _ = Nothing

parseall p = case parse p of
	Just (packet, p') -> packet:(parseall p')
	Nothing -> []

parsen 0 p = ([], p)
parsen n p = case parse p of
	Just (packet, p') -> let (packets, p'') = parsen (n-1) p' in (packet:packets, p'')
	Nothing -> ([], p)

parsetype 4 = first (Lit . b2n) . parselit
parsetype _ = uncurry parseop . fromJust . uncons

parselit (q:a:b:c:d:p) = first ([a,b,c,d] ++) $ if q then parselit p else ([], p)
parselit p = ([], p)

parseop False p = first (Op . parseall) . uncurry chop . first b2n $ chop 15 p
parseop True p = first Op . uncurry parsen . first b2n $ chop 11 p

totalversions Packet{version = v, packetdata = pd} = v + rec where
	rec = case pd of
		Lit _ -> 0
		Op packets -> sum $ map totalversions packets

eval Packet{typeid = op, packetdata = pd} = case pd of
	Lit n -> n
	Op packets ->
		let
			ns = map eval packets
			fn = case op of
				0 -> sum
				1 -> product
				2 -> minimum
				3 -> maximum
				5 -> fromEnum . uncurry (>) . first2
				6 -> fromEnum . uncurry (<) . first2
				7 -> fromEnum . uncurry (==) . first2
		in fn ns

parseinput = fst . fromJust . parse . i2b

part1 = totalversions . parseinput
part2 = eval . parseinput