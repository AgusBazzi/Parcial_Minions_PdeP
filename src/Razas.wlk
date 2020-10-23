import Minions.*


class Biciclope inherits Minion {
	
	override method recuperarEstamina(unaCantidad) {
		super(unaCantidad)
		estamina = estamina.min(10)
	}
	
}

class Ciclope inherits Minion {
	

	
}


