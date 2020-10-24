class Rol {
	
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