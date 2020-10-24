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
	
	method recuperarEstamina(unaCantidad)
	
	method estamina()
	
	
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
		if (self.puedoRealizar(unaTarea)) {
			self.completarTarea(unaTarea)
		}
		else {
			throw new Exception ( message = "El Minion no puede realizar la tarea")
		}
	}
	
	method puedoRealizar(unaTarea) {
		return unaTarea.cumpleRequerimientos(self)
	}
	
	method completarTarea(unaTarea) {
		unaTarea.serRealizadaPor(self)
		tareasRealizadas.add(unaTarea)
	}
	
	method tengoHerramienta(unaHerramienta) {
		return rol.tengoHerramienta(unaHerramienta)
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
	
	method combatir() {
		rol.combatir(self)
	}
	
	method perderMitadEstamina() {
		estamina = estamina / 2
	}
	
	method limpiarSector(estaminaUtilizada) {
		rol.limpiarSector(estaminaUtilizada, self)
	}
}
