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
	override method transmiteEnfermedades() = pesoBichos > 10 
	override method atacar(elemento) {
		super(elemento)
	}
}

class Pulgas inherits Plaga { 
	var pesoBichos
	method pesoPromedio() = pesoBichos
	method nivelDeDanio() = self.poblacion() * 2 
	override method transmiteEnfermedades() = pesoBichos > 10 
	
}

class Garrapata inherits Plaga {
	
}