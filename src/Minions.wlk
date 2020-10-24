import Frutas.*
import Roles.*
import Razas.*
import Tareas.*

class Minion {
	
	var estamina
	var tareasRealizadas = []
	var rol
	
	
	// ------ Punto 1 ------ //
	
	method comerFruta(unaFruta) {
		const cantidadEstamina = unaFruta.energiaQueDoy()
		self.recuperarEstamina(cantidadEstamina)
	}
	
	method recuperarEstamina(unaCantidad) {
		estamina = estamina + unaCantidad
	}
	
	method estamina() {
		return estamina
	}
	
	
	// ------ Punto 2 ------ //
	
	method experiencia() {
		return self.cantidadTareasRealizadas() * self.totalDificultadesTareas()
	}
	
	method cantidadTareasRealizadas() {
		return tareasRealizadas.size()
	}
	
	method totalDificultadesTareas() {
		return tareasRealizadas.sum { tarea => tarea.dificultadPara(self) }
	}
	
	
	// ------ Punto 3 ------ //
	
	method realizarTarea(unaTarea) {
		if (rol.puedoRealizar(unaTarea, self)) {
			rol.completarTarea(unaTarea, self)
		}
		else {
			throw new Exception ( message = "El Minion no puede realizar la tarea")
		}
	}
	
	method puedoRealizar(unaTarea) {
		return unaTarea.cumpleRequerimientos(self, rol)
	}
	
	method agregarTarea(unaTarea) {
		tareasRealizadas.add(unaTarea)
	}
		
	method arreglarMaquina(estaminaUtilizada){
		self.perderEstamina(estaminaUtilizada)
	}
	
	method perderEstamina(unaCantidad) {
		estamina = estamina - unaCantidad
	}
	
	method fuerza() {
		const fuerzaBasica = estamina / 2 + 2
		return fuerzaBasica + self.fuerzaAdicionalRol()
	}
	
	method fuerzaAdicionalRol() {
		return rol.fuerzaAdicional()
	}
	
	method defiendeMal()
	
	method perderMitadEstamina() {
		estamina = estamina / 2
	}
}
