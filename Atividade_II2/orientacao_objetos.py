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


