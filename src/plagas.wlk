import elementos.*

class Plaga {
	var property poblacion 
	method transmiteEnfermedades() = return poblacion > 10  
	method aumentarPoblacion(valor) { poblacion *= valor }
	method atacar(elemento) {
		self.aumentarPoblacion(1.1)
		elemento.recbibirAtaque(self)
	}
}

class Cucaracha inherits Plaga {
	var pesoBichos
	method pesoPromedio() = pesoBichos
	method nivelDeDanio() = self.poblacion() * 2 
	override method transmiteEnfermedades() = return super() && pesoBichos > 10
	override method atacar(elemento) { 
		super(elemento)
		pesoBichos += 2
	}
}

class Pulgas inherits Plaga { 
	method nivelDeDanio() = self.poblacion() * 2 
}

class Garrapata inherits Plaga {
	override method atacar(elemento) {
		self.aumentarPoblacion(1.2)
		elemento.recbibirAtaque(self)
	}
}

class Mosquitos inherits Plaga {
	method nivelDeDanio() = return self.poblacion()
	override method transmiteEnfermedades() = return super() && self.poblacion() % 3 == 0
}