import Frutas.*

class Minion {
	
	var estamina
	
	method comerFruta(unaFruta) {
		const cantidadEstamina = unaFruta.energiaQueDoy()
		self.recuperarEstamina(cantidadEstamina)
	}
	
	method recuperarEstamina(unaCantidad) {
		estamina = estamina + unaCantidad
	}
}