// ------ Punto 3 ------ //

class Rol {
	
	method puedoRealizar(unaTarea, yoMinion) {
		return yoMinion.puedoRealizar(unaTarea)
	}
	
	method completarTarea(unaTarea, yoMinion) {
		yoMinion.completarTarea(unaTarea)
	}
	
	method tengoHerramienta(unaHerramienta) {
		return false
	}
	
	method fuerzaAdicional() {
		return 0
	}
	
	method soyMucama() {
		return false
	}
	
	method limpiarSector(estaminaUtilizada, yoMinion) {
		yoMinion.perderEstamina(estaminaUtilizada)
	}
	
	method combatir(yoMinion) {
		yoMinion.perderMitadEstamina()
	}
}


class Soldado inherits Rol {
	
	var practica = 0
	
	override method fuerzaAdicional() {
		return practica * 2
	}
	
	override method combatir(yoMinion) {
		practica = practica + 1
	}
		
}


class Obrero inherits Rol {
	
	const herramientas
	
	override method tengoHerramienta(unaHerramienta) {
		return herramientas.contains(unaHerramienta)
	}
	
}


object mucama inherits Rol {
	
	override method soyMucama() {
		return true
	}
	
	override method limpiarSector(estaminaUtilizada, yoMinion) {
		// nada
	}
}



// ------ Punto 4 ------ //

class Capataz inherits Rol {
	
	const subordinados = #{}
	
	override method puedoRealizar(unaTarea, yoMinion){
		return yoMinion.puedoRealizar(unaTarea) || self.algunSubordinadoPuede(unaTarea)
	}
	
	method algunSubordinadoPuede(unaTarea) {
		return subordinados.any { minion => minion.puedoRealizar(unaTarea) }
	}
	
	override method completarTarea(unaTarea, yoMinion) {
		if (self.algunSubordinadoPuede(unaTarea)) {
			self.pedirAlMasExperto(unaTarea)
		}
		else {
			yoMinion.completarTarea(unaTarea)
		}
	}
	
	method pedirAlMasExperto(unaTarea) {
		const elMasExperto = self.subordinadosOrdenadosExp().find { minion => minion.puedoRealizar(unaTarea) }
		elMasExperto.completarTarea(unaTarea)
	}
	
	method subordinadosOrdenadosExp() {
		return subordinados.sortedBy { sub1, sub2 => sub1.expriencia() > sub2.experiencia() }
	}
	
}