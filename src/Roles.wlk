class Soldado {
	
	var damageInicial
	var practica = 0
	
	method tengoHerramienta(unaHerramienta) {
		return false
	}
	
}

class obrero {
	
	const herramientas
	
	method tengoHerramienta(unaHerramienta) {
		return herramientas.contains(unaHerramienta)
	}
	
}

class mucama {
	
	method tengoHerramienta(unaHerramienta) {
		return false
	}
	
}