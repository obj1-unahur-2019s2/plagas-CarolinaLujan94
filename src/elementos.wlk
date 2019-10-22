class Hogar {
	var property nivelDeMugre
	var property nivelDeConfort
	method esBueno() = nivelDeMugre <= nivelDeConfort / 2
	method recibirAtaque(plaga) {
		nivelDeMugre += plaga.nivelDeDanio()
	}
}

class Huerta {
	var property capacidadProduccion
	const nivel1 = nivelDeProduccion 
	method esBueno() = capacidadProduccion > nivel1.nivel() 
	method recibirAtaque(plaga) {
		capacidadProduccion -= plaga.nivelDeDanio() * 0.1
		if (plaga.transmiteEnfermedades())
			capacidadProduccion -= 10		
		}
	}

object nivelDeProduccion { 
	var property nivel = 0 
}

class Mascota {
	var property nivelDeSalud
	method esBuena() = return nivelDeSalud > 250
	method recibirAtaque(plaga) {
		if (plaga.transmiteEnfermedades()) 
			nivelDeSalud = 0.max(nivelDeSalud - plaga.nivelDeDanio())
	}
}

class Barrio {
	const property elementos = []
	method agregarElelmento(elemento) {elementos.add(elemento)}
	method sacarElelmento(elemento) {elementos.remove(elemento)}
	method esCopado() = return elementos.count({e => e.esBueno()}) > elementos.count({e => not e.esBueno()})
}

