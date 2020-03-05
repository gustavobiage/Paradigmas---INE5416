#  -*- coding: utf -8  -*-

N = int(input())

sa = 0
co = 0
ra = 0

for i in range(N):
	v, t = input().split()
	v = int(v)

	if (t == 'C'):
		co += v
	elif (t == 'R'):
		ra += v
	elif (t == 'S'):
		sa += v


total = sa + ra + co

print('Total: %d cobaias' % total)

print('Total de coelhos: %d' % co)
print('Total de ratos: %d' % ra)
print('Total de sapos: %d' % sa)

total = float(total)

ape =  ' %'

a = float(co/total) * 100
var = 'Percentual de coelhos: %.2f' % a
# print('Percentual de coelhos: %.2f %' % a)
print(var + ape)
a = float(ra/total) * 100
var = 'Percentual de ratos: %.2f' % a
# print('Percentual de ratos: %.2f %' % a)
print(var + ape)
a = float(sa/total) * 100
var = 'Percentual de sapos: %.2f' % a
# print('Percentual de sapos: %.2f %' % a)
print(var + ape)


