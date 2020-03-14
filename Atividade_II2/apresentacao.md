#Orientação a objetos em python
##Introdução
Utilizaremos um caso de estudo para apresentar os conceitos de orientação a objeto em Python, assim, apesar de ocorrências triviais de explicar orientação a objetos com o tema de animais, adotaremos o mesmo tentando ir mais a fundo dos tópicos abordados.
##Declaração e instanciação de classes (métodos, atributos, construtores):
Podemos declarar uma classe com a *keyword* seguido do nome da classe, *class <nome>:*, assim, do modo que é definido blocos de código na linguagem Python, utilizamos indentação para declarar que um método pertence a uma certa classe. Dessa forma, diferente de outras linguagens de programação, a linguagem Python exige que suas funções recebem a instância do objeto que chama a função como parâmetro, logo, funções não estáticas possuem seu primeiro argumento *self*, depois veremos como isto ocorre.
Por consequência, declaramos o construtor como:
```python
  def __init__(self):
  	pass
 ```
 Na linguagem, um bloco de código não pode estar vazio, dessa maneira, utilizamos a *keyword* *pass* para declarar que nada ocorrera nesta função, para nosso caso de estudo abaixo definiremos algumas classes e seus construtores:

```python
class Animal:
	def __init__(self):
		pass
	
	def definirNome(self, nome):
		self.nome = nome

class Leao:
	def __init__(self):
		pass
```

##Herança (simples  e múltipla) e polimorfismo:
A definição de herança é uma relação entre duas classes, quando uma classe herda da outra, por consequência, ela herda todas as características de seus *antepasados*. Podemos definir está relação de herança no Python da seguinte maneira:
```python
class classePai:
	pass

class classeFilha(classePai):
	pass
```
No conceito de orientação a objetos, podemos definir que uma classe tem ralação de herança com a outra quando o conjunto representado por todas as instâncias destas classes é um subconjunto de todas as instâncias da outra classe. Com as classes apresentadas no tópico anterior, percebemos que o conjunto de todas as instâncias de Leões é um subconjunto de todas as instâncias de Animais. Dessa forma podemos definir que Leao herda de Animal. O mesmo podemos aplicar para qualquer outra classe de um animal no nosso código, isto é demonstrado no exemplo seguinte:

Polimorfismo é definido quando múltiplas classes, com relações de herança, possuem métodos com a mesma assinatura, porém com operações diferentes, quando chamamos está função a partir de uma classe genérica, qual função é executada está diretamente ligado a instância que este objeto pertence, no nosso exemplo de animais, podemos definir uma função *comer* que possuirá um comportamento diferente a partir de cada classe de herança. Veja o código a baixo.

```python
class Animal:
	def __init__(self):
		pass

	def comer(self, animal):
		pass

	def definirNome(self, nome):
		self.nome = nome

class Leao(Animal):
	def __init__(self):
		pass
	
	def comer(self, comida):
		print("Leão se alimenta")

class Morcego(Animal):
	def __init__(self):
		pass

	def comer(self, comida):
		print("Morcego se alimenta!")

class Escorpiao(Animal):
	def __init__(self):
		pass

	def comer(self, comida):
		print("Escorpiao se alimenta!")
```

Assim como temos herança simples, uma classe herdando de outra, a linguagem Python permite herança múltipla, onde uma classe herda muitas outras, utilizaremos o animal mitológico, manticora, para complementar este nosso exemplo, uma vez que o animal é parte leão, parte morcego e parte escorpião. Heranças múltiplas são declaras similarmente as simples, porém separando as múltiplas heranças por uma vírgula.

```python
# Parte do código está oculto
class Manticora(Leao, Morcego, Escorpião):
	def __init__(self):
		pass

	def comer(self, comida):
		print("Manticora se alimenta!")
```

##Composição e/ou agregação:
Composição e agregação são muito similares, eles ocorrem quando uma classe possui uma instância de outra classe como variável, a diferença entre eles são que a classe que contém a outra existe somente por está composição, e a ausência desta variável implica diretamente no proposito de sua existência, neste exemplo, definiremos duas classes, herbívoros e carnívoros, assim, um animal possuirá uma alimentação, sendo ela uma instância de uma destas duas classes. Deste modo, a ausência da variável alimentação não implica na não existência da classe Animal, logo, possuímos uma composição e não um agregação.

```python
# Parte do código está oculto.
class Leao:

	def __carregarCaracteristicas(self):
		self.alimentação = Carnivoro

class Carnivoro:
	def __init__(self):
		pass

	def pertenceDieta(self, comida):
		if isinstance(comida, Animal):
			return True
		return False

class Herbivoro:
	def __init__(self):
		pass

	def pertenceDieta(self, comida):
		if not isinstance(comida, Animal):
			return True
		return False
```

##Métodos abstratos e estáticos
Métodos estáticos são os que não necessitam de uma instância de uma classe para ser chada, porém, ainda está ligada a está classe. Por uma Manticora ser um animal mitológico, talvez não faça muito sentido que haja mais de um deles, então utilizaremos uma função estática, e um padrão de projeto Singleton, para definir uma função que retorne esta nossa única instância da classe. Note que quando um método é estático ele não exite o argumento *self*, mas o argumento *cls*, que será a classe e pode ser utilizada para chamar outros métodos estáticos e utilizar variáveis estáticas. Definimos que um método é estático com a *tag* @classmethod, veja o exemplo a baixo.

```python
# Parte do código está oculto
class Manticora(Leao, Morcego, Escorpiao):

	@classmethod
	def singleton(cls):
		global manticora
		try:
			if not isinstance(manticora, Manticora):
				manticora = cls()
		except NameError:
			manticora = cls()

		return manticora
```
Métodos abstratos são métodos que não são implementados pela classe, porém definidos, assim, eles exigem sua implementação pelas classes que, de alguma maneira, herdam suas características. Semelhante aos métodos abstratos, estes métodos são explicitamente definidos com o uso de uma *tag* *@classmethod*.
Também podemos definir classes abstratas, seriam classes que não devem ser instanciadas, logo que, elas não fazer sentido possuírem uma instância puramente delas e somente existem para complementarem classes inferiores através de herança. 
Assim, definiremos nossa classe Animal como uma classe abstrata, e seu método comer como um método abstrato, pois, não nos fornece valor uma instância desta classe que não seja uma instância de leão ou morcego, ou qualquer outro animal.

```python
# Parte do código está oculto
from abc import ABCMeta, abstractmethod

class Animal:
	# Define como uma classe abstrata
	__metaclass__ = ABCMeta

	def __init__(self):
		pass

	@abstractmethod
	def comer(self, animal):
		pass
```

##Código completo
Seguinte segue o código completo com melhor uso da orientação a objetos e uma função *main* para testar os mecanismos apresentados.

```python
# -*- coding: UTF-8 -*-
import math
from abc import ABCMeta, abstractmethod

class Animal:
	__metaclass__ = ABCMeta

	def __init__(self):
		pass

	@abstractmethod
	def comer(self, animal):
		pass

	@abstractmethod
	def __carregarCaracteristicas(self):
		pass

	def definirNome(self, nome):
		self.nome = nome

class Leao(Animal):
	def __init__(self):
		super().__init__()
		self.__carregarCaracteristicas()

	def comer(self, comida):
		if self.alimentacao.pertenceDieta(comida):
			print("Se alimenta como um Leão!")
		else:
			print("Não levanta o apetite!")

	def __carregarCaracteristicas(self):
		self.especie = "Leão"
		self.alimentacao = Carnivoro()
		self.raridade = 5

class Morcego(Animal):
	def __init__(self):
		super().__init__()
		self.__carregarCaracteristicas()

	def comer(self, comida):
		if self.alimentacao.pertenceDieta(comida):
			print("Se alimenta como um Morcego!")
		else:
			print("Não levanta o apetite!")

	def __carregarCaracteristicas(self):
		self.especie = "Morcego"
		self.alimentacao = Herbivoro()
		self.raridade = 3
	
class Escorpiao(Animal):
	def __init__(self):
		super().__init__()
		self.__carregarCaracteristicas()

	def comer(self, comida):
		if self.alimentacao.pertenceDieta(comida):
			print("Se alimenta como um Escopião!")
		else:
			print("Não levanta o apetite!")

	def __carregarCaracteristicas(self):
		self.especie = "Escorpiao"
		self.alimentacao = Carnivoro()
		self.raridade = 2

class Manticora(Leao, Morcego, Escorpiao):
	def __init__(self):
		super().__init__()
		self.__carregarCaracteristicas()

	def __carregarCaracteristicas(self):
			self.especie = "Manticora"
			self.alimentacao = Carnivoro()
			self.raridade = math.inf
			self.nome = "????"

	@classmethod
	def singleton(cls):
		global manticora
		try:
			if not isinstance(manticora, Manticora):
				manticora = cls()
		except NameError:
			manticora = cls()

		return manticora

class Carnivoro:
	def __init__(self):
		pass

	def pertenceDieta(self, comida):
		if isinstance(comida, Animal):
			return True
		return False

class Herbivoro:
	def __init__(self):
		pass

	def pertenceDieta(self, comida):
		if not isinstance(comida, Animal):
			return True
		return False

def main() :
	leao = Leao()
	morcego = Morcego()
	escorpiao = Escorpiao()

	mant = Manticora.singleton()
	presa = Animal()

	leao.comer(presa)
	morcego.comer(presa)
	escorpiao.comer(presa)
	mant.comer(presa)

if __name__ == "__main__":
	main()

```