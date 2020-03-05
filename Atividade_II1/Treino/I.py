
while True:
	N = int(input())

	if N == 0:
		break

	
	for i in range(N):
		l = []
		a, b, c, d, e = input().split()

		l.append(int(a))
		l.append(int(b))
		l.append(int(c))
		l.append(int(d))
		l.append(int(e))

		count = 0
		res = -1
		for f in range(len(l)):
			if (l[f] <= 127):
				l[f] = 0
				count += 1
				res = f
			else:
				l[f] = 1

		if count > 1 or count == 0:
			print('*')
		elif res == 0:
			print('A')
		elif res == 1:
			print('B')
		elif res == 2:
			print('C')
		elif res == 3:
			print('D')
		elif res == 4:
			print('E')







