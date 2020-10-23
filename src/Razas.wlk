import Minions.*


class Biciclope inherits Minion {
	
	override method recuperarEstamina(unaCantidad) {
		super(unaCantidad)
		estamina = estamina.min(10)
	}
	
	override method estamina() {
		return estamina.min(10)
	}
	
	method defiendeMal() {
		return false
	}
	
}

class Ciclope inherits Minion {
	
	method defiendeMal() {
		return true
	}

	
}


