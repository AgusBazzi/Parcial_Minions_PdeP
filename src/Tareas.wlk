class ArreglarUnaMaquina {
	
	const complejidad
	const herramientasNecesarias
	
	method dificultadPara(unMinion) {
		return complejidad * 2
	}
	
	method cumpleRequerimientos(unMinion) {
		return self.tieneEstaminaSuficiente(unMinion) && self.tieneHerramientasNecesarias(unMinion)
	}
	
	method tieneEstaminaSuficiente(unMinion) {
		return unMinion.estamina() >= complejidad
	}
	
	method tieneHerramientasNecesarias(unMinion) {
		return herramientasNecesarias.all { requerida => unMinion.tengoHerramienta(requerida) }
	}
	
	method serRealizadaPor(unMinion) {
		unMinion.perderEstamina(complejidad)
	}
}


class DefenderUnSector {
	
	const gradoAmenaza
	
	method dificultadPara(unMinion) {
		var dificultad = gradoAmenaza
		if (unMinion.defiendeMal()) dificultad = dificultad * 2
		return dificultad
	}
	
	method cumpleRequerimientos(unMinion) {
		
	}
}


class LimpiarUnSector {
	
	method dificultadPara(unMinion) {
		return dificultadLimpieza.dificultad()
	}
	
	method cumpleRequerimientos(unMinion) {
		
	}
}


object dificultadLimpieza {
	
	var property dificultad = 10
	
}
