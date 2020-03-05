#  -*- coding: utf -8  -*-

N = int(input())

for i in range(0, N):

	text = input()

	t1 = ""
	for i in range(len(text)):
		c = ord(text[i])
		if text[i].isalpha():
			d = chr(ord(text[i]) + 3)
		else:
			d = text[i]

		t1 = t1 + d

	t2 = t1[len(t1)::-1]
	
	t3 = ""
	for i in range(len(t2)):
		if i >= int(len(t2)/2):
			d = chr(ord(t2[i]) - 1)
		else:
			d = t2[i]

		t3 = t3 + d

	print(t3)