# -*- coding: utf-8 -*-

X, Y = input().split()

X = int(X)
Y = int(Y)

if X >= 0 and X <= 432 and Y >= 0 and Y <= 936/2:
	print('dentro')
else:
	print('fora')
