# -*- coding: utf-8 -*-

A, B, C = input().split()

A = int(A)
B = int(B)
C = int(C)

m = A / 2
if B / 3 < m:
	m = B / 3

if C / 5 < m:
	m = C / 5

print(int(m))