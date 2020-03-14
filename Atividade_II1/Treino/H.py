
while (True):

	h1, m1, h2, m2 = input().split()

	h1 = int(h1)
	h2 = int(h2)
	m1 = int(m1)
	m2 = int(m2)

	if (h1 == 0 and m1 == 0 and h2 == 0 and m2 == 0):
		break

	if (h1 > h2):
		h2 += 24

	if h1 == h2 and m1 > m2:
		h2 += 23
		m2 += 60

	
	# print(h1)
	# print(m1)
	# print(h2)
	# print(m2)
	res = (h2 - h1) * 60 + m2 - m1

	print(res)