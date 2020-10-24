import Minions.*


class Biciclope inherits Minion {
	
	// ------ Punto 1 ------ //
	
	override method recuperarEstamina(unaCantidad) {
		super(unaCantidad)
		estamina = estamina.min(10)
	}
	
	override method estamina() {
		return estamina.min(10)
	}
	
	
	// ------ Punto 3 ------ //
	
	method defiendeMal() {
		return false
	}
	
}

class Ciclope inherits Minion {
	
	// ------ Punto 3 ------ //
	
	method defiendeMal() {
		return true
	}
	
	override method fuerza() {
		return super() / 2
	}
	
}


