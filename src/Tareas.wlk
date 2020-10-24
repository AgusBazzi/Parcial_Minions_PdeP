class ArreglarUnaMaquina {
	
	const complejidad
	const herramientasNecesarias
	
	// ------ Punto 2 ------ //
	
	method dificultadPara(unMinion) {
		return complejidad * 2
	}
	
	
	// ------ Punto 3 ------ //
	
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
		unMinion.arreglarMaquina(complejidad)
	}
}


class DefenderUnSector {
	
	const gradoAmenaza
	
	// ------ Punto 2 ------ //
	
	method dificultadPara(unMinion) {
		var dificultad = gradoAmenaza
		if (unMinion.defiendeMal()) dificultad = dificultad * 2
		return dificultad
	}
	
	
	// ------ Punto 3 ------ //
	
	method cumpleRequerimientos(unMinion) {
		return !unMinion.soyMucama() && self.tieneFuerzaNecesaria(unMinion)
	}
	
	method tieneFuerzaNecesaria(unMinion) {
		return unMinion.fuerza() >= gradoAmenaza
	}
	
	method serRealizadaPor(unMinion) {
		unMinion.combatir()
	}
}


class LimpiarUnSector {
	
	const soySectorGrande
	
	// ------ Punto 2 ------ //
	
	method dificultadPara(unMinion) {
		return dificultadLimpieza.dificultad()
	}
	
	
	// ------ Punto 3 ------ //
	
	method cumpleRequerimientos(unMinion) {
		return self.tieneEstaminaSuficiente(unMinion) || unMinion.soyMucama()
	}
	
	method tieneEstaminaSuficiente(unMinion) {
		return unMinion.estamina() >= self.estaminaNecesaria()
	}
	
	method estaminaNecesaria() {
		if (soySectorGrande) return 4
		else return 1
	}
	
	method serRealizadaPor(unMinion) {
		const estaminaUtilizada = self.estaminaNecesaria()
		unMinion.limpiarSector(estaminaUtilizada)
	}
}


object dificultadLimpieza {
	
	// ------ Punto 2 ------ //
	
	var property dificultad = 10
	
}
