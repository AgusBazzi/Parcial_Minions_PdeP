import Frutas.*

class Minion {
	
	var estamina
	var tareasRealizadas = []
	
	method comerFruta(unaFruta) {
		const cantidadEstamina = unaFruta.energiaQueDoy()
		self.recuperarEstamina(cantidadEstamina)
	}
	
	method recuperarEstamina(unaCantidad) {
		estamina = estamina + unaCantidad
	}
	
	method experiencia() {
		return self.cantidadTareasRealizadas() * self.totalDificlutadesTareas()
	}
	
	method cantidadTareasRealizadas() {
		return tareasRealizadas.size()
	}
	
	method totalDificultadesTareas() {
		return tareasRealizadas.sum { tarea => tarea.dificultadPara(self) }
	}
	
}
