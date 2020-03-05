
data = [50, 10, 5, 1]

count = 0

while True:
		
	v = int(input())
	if v == 0:
		break

	count += 1
	first = True

	print('Teste %d' % count)
	for k in data:
		u = v / k
		v = v % k

		if first:
			first = False
			print('%d' % u, end = '')
		else:
			print(' %d' % u, end = '')

	print()
	print()


