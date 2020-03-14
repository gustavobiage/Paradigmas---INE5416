
N, M = input().split()

N = int(N)
M = int(M)

poss = []
for i in range(N+1):
	poss.append(0)

for i in range(M):
	pos, jump = input().split()
	pos = int(pos)
	jump = int(jump)

	init_pos = pos

	while pos <= N:
		poss[pos] = 1
		pos += jump

	pos = init_pos

	while pos >= 1:
		poss[pos] = 1
		pos -= jump
		
for i in range(N):
	print(poss[i+1])
