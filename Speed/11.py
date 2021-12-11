def incall(a):
	for y, row in enumerate(a):
		for x, _ in enumerate(row):
			a[y][x] += 1

def doneflashing(a):
	return all(map(lambda row: all(map(lambda n: n[1] < 10, row)), a))

def allzeros(a):
	return all(map(lambda row: all(map(lambda n: n == 0, row)), a))

def addfalses(a):
	for y, row in enumerate(a):
		for x, _ in enumerate(row):
			a[y][x] = [False, a[y][x]]

def removebools(a):
	for y, row in enumerate(a):
		for x, _ in enumerate(row):
			a[y][x] = a[y][x][1]

def flash(a):
	idxs_ = idxs(a)
	for x, y in idxs_:
		a[y][x] = [True, 0]
	idxs_ = around(idxs_)
	idxs_ = list(filter(inbounds, idxs_))
	for x, y in idxs_:
		if not a[y][x][0]:
			a[y][x][1] += 1

def around(a):
	idxs_ = []
	for pos in a:
		for y in range(-1, 2):
			for x in range(-1, 2):
				if x != 0 or y != 0:
					idxs_.append((pos[0] + x, pos[1] + y))
	return idxs_

def inbounds(a):
	return a[0] in range(10) and a[1] in range(10)

def idxs(a):
	#global flashes
	idxs_ = []
	for y, row in enumerate(a):
		for x, _ in enumerate(row):
			if a[y][x][1] > 9:
				#flashes += 1
				idxs_.append((x, y))
	return idxs_

def step(a):
	incall(a)
	addfalses(a)
	while not doneflashing(a):
		flash(a)
	removebools(a)

inp = """2566885432
3857414357
6761543247
5477332114
3731585385
1716783173
1277321612
3371176148
1162578285
6144726367"""

lines = inp.split()

arr = list(map(lambda row: list(map(int, row)), lines))

flashes = 0

#for _ in range(100):
#	step(arr)
#	print(arr)

#print(flashes)

steps = 0

while not allzeros(arr):
	steps += 1
	step(arr)
	print(arr)

print(steps)