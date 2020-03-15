import math

def um():
# 	Crie uma expressão Lambda que receba dois valores booleanos (x, y) retorne o resultado do “ou exclusivo”
# 	(XOR) sobre eles. Leia os valores x e y do teclado.

	lamb_xor  = lambda x, y: x ^ y
	print(lamb_xor (10, 5));


def dois():
# 	Crie uma expressão Lambda que receba três notas de um aluno (a, b, c), calcule a média e retorne se o
# 	aluno foi aprovado ou reprovado. Para um aluno ser aprovado, ele deve possuir nota igual ou superior a
# 	6. Leia as notas dos alunos do teclado.

	lamb_func = lambda a, b, c: [(a+b+c)/3, (a+b+c)/3 >= 6]
	media, aprov =	lamb_func (10, 2, 1)
	print(media, ' ', aprov);
	media, aprov =	lamb_func (8, 7, 2)
	print(media, ' ', aprov);
	media, aprov =	lamb_func (8, 7, 3)
	print(media, ' ', aprov);


def tres():
# 	Crie uma expressão Lambda que compute o n-ésimo número de Fibonacci. Leia n do teclado.

	fib = lambda x: 1 if (x <= 2) else fib (x-1) + fib(x-2)
	print(fib(1));
	print(fib(2));
	print(fib(3));
	print(fib(4));
	print(fib(5));
	print(fib(6));

def quatro():
# 	Crie uma expressão Lambda que resolva uma equação de segundo grau da forma ax2 + bx + c utilizando
# 	a fórmula de Bhaskara. Leia os coeficientes a, b e c do teclado.

	a, b, c = [1, 2, 1]
	equation = lambda _ : [ (-b + math.sqrt(b*b - 4*a*c))/2*a, (-b - math.sqrt(b*b - 4*a*c))/2*a]
	x1, x2 = equation (None);
	print('x1 =', x1, 'x2 =', x2);

def cinco():
# 	Crie uma expressão Lambda que dados dois pontos no espaço 3D, (x1, y1, z1) e (x2, y2, z2), compute a
# 	distância entre eles. Leia as posições dos pontos do teclado.

	distance = lambda x, y: math.sqrt( (x[0] - y[0]) * (x[0] - y[0]) + (x[1] - y[1]) * (x[1] - y[1]) + (x[2] - y[2]) * (x[2] - y[2]) ) 
	dist = distance ([0, 2, 2], [-2, 0, 1])
	print('distance =', dist)

def seis():
# 	Crie uma expressão Lambda que receba 3 valores numéricos (a, b, c) e retorne o maior deles. Não utilize
# 	nenhuma forma de ordenação. Leia os valores a, b, c do teclado.

	max_t = lambda x, y, z: max_d (max_d (x, y), max_d (y, z))
	max_d = lambda x, y: (x > y) * x + (y >= x) * y

	print('maxímo = ', max_t (10, 2, 7))
	print('maxímo = ', max_t (5, 4, 4))
	print('maxímo = ', max_t (2, 4, 3))
	print('maxímo = ', max_t (1, 9, 9))

def sete():
# 	Utilize a função map que receba como parâmetros uma sequência numérica e uma função lambda. A
# 	função lambda deve retornar par ou ı́mpar para cada número.

	res = {0: 'par', 1: 'impar'}
	lambda_func = lambda x: res[x%2]
	input_ = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	m = map(lambda_func, input_)
	print(list(m))

def main():
	# um()
	# dois()
	# tres()
	# quatro()
	# cinco()
	# seis()
	# sete()
	pass

if __name__ == "__main__":
    main()
