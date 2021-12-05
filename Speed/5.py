with open("./Speed/bh.txt", "r") as file:
	arr = list(map(lambda line: list(map(int, line.split())), file.read().split("\n")))

board = list(map(lambda _: [0] * 1000, [0] * 1000))

def draw(x1,y1,x2,y2):
	if x1 == x2 or y1 == y2:
		x1, x2 = (min(x1, x2), max(x1, x2))
		y1, y2 = (min(y1, y2), max(y1, y2))
		for x in range(x1, x2 + 1):
			for y in range(y1, y2 + 1):
				board[y][x] += 1
	elif x1 - x2 == y1 - y2:
		x1, x2 = (min(x1, x2), max(x1, x2))
		y1, y2 = (min(y1, y2), max(y1, y2))
		for x in range(x1, x2 + 1):
			board[y1 + x - x1][x] += 1
	else:
		x1, x2 = (min(x1, x2), max(x1, x2))
		y1, y2 = (max(y1, y2), min(y1, y2))
		for x in range(x1, x2 + 1):
			board[y1 - x + x1][x] += 1

for x1,y1,x2,y2 in arr:
	print(x1,y1,x2,y2)
	draw(x1,y1,x2,y2)

tot = 0

for r in board:
	for n in r:
		if n > 1:
			tot += 1

print(tot)