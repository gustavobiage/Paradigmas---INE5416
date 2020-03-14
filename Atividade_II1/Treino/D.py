#  -*- coding: utf -8  -*-

value = int(input())

data = [100, 50, 20, 10, 5, 2, 1]

print(value)

for v in data:
	n = value / v
	value = value % v
	print('%d nota(s) de R$ %d,00' % (n, v))