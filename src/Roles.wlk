class Soldado {
	
	var damageInicial
	var practica = 0
	
	method tengoHerramienta(unaHerramienta) {
		return false
	}
	
	method fuerzaAdicional() {
		return practica * 2
	}
	
	method soyMucama() {
		return false
	}
	
	method combatir(yoMinion) {
		// nada
	}
	
	
}

class obrero {
	
	const herramientas
	
	method tengoHerramienta(unaHerramienta) {
		return herramientas.contains(unaHerramienta)
	}
	
	method fuerzaAdicional() {
		return 0
	}
	
	method soyMucama() {
		return false
	}
	
	method combatir(yoMinion) {
		yoMinion.perderMitadEstamina()
	}
	
}

class mucama {
	
	method tengoHerramienta(unaHerramienta) {
		return false
	}
	
	method fuerzaAdicional() {
		return 0
	}
	
	method soyMucama() {
		return true
	}
	
	method combatir(yoMinion) {
		yoMinion.perderMitadEstamina()
	}
}