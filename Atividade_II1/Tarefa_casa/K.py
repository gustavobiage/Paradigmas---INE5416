from collections import deque 
from fileinput import stdin

class Node:

	def __init__(self, value):
		self.value = value
		self.left = None
		self.right = None


def insert(root, value):

	if root is not int:
		insert_node(root, value)
	else:
		root = Node(value)

def insert_node(node, value):
	if node.value == value:
		return
	elif node.value > value:
		if node.left:
			insert_node(node.left, value)
		else:
			node.left = Node(value)
	elif node.value < value:
		if node.right:
			insert_node(node.right, value)
		else:
			node.right = Node(value)

def bfs(root, prt):

	queue = deque()
	queue.append(root)

	while len(queue):
		u = queue.popleft()
		prt.append(str(u.value))
		if u.left:
			queue.append(u.left)

		if u.right:
			queue.append(u.right)


T = int(input())
lines = stdin.input()


for t in range(T):
	C = int(input())

	root = -1
	input_ = input().split()
	for c in range(C):
		insert(root, int(input_[c]))	


	print('Case %d:' % (t+1))
	to_be_printed = []
	bfs([root], to_be_printed)
	print(' '.join(to_be_printed), end='\n\n')

	
