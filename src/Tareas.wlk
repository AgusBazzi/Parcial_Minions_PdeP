class ArreglarUnaMaquina {
	
	const complejidad
	const herramientasNecesarias
	
	// ------ Punto 2 ------ //
	
	method dificultadPara(unMinion) {
		return complejidad * 2
	}
	
	
	// ------ Punto 3 ------ //
	
	method cumpleRequerimientos(unMinion, unRol) {
		return self.tieneEstaminaSuficiente(unMinion) && self.tieneHerramientasNecesarias(unRol)
	}
	
	method tieneEstaminaSuficiente(unMinion) {
		return unMinion.estamina() >= complejidad
	}
	
	method tieneHerramientasNecesarias(unRol) {
		return herramientasNecesarias.all { requerida => unRol.tengoHerramienta(requerida) }
	}
	
	method serRealizadaPor(unMinion, unRol) {
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
	
	method cumpleRequerimientos(unMinion, unRol) {
		return !unRol.soyMucama() && self.tieneFuerzaNecesaria(unMinion)
	}
	
	method tieneFuerzaNecesaria(unMinion) {
		return unMinion.fuerza() >= gradoAmenaza
	}
	
	method serRealizadaPor(unMinion, unRol) {
		unRol.combatir(unMinion)
	}
}


class LimpiarUnSector {
	
	const soySectorGrande
	
	// ------ Punto 2 ------ //
	
	method dificultadPara(unMinion) {
		return dificultadLimpieza.dificultad()
	}
	
	
	// ------ Punto 3 ------ //
	
	method cumpleRequerimientos(unMinion, unRol) {
		return self.tieneEstaminaSuficiente(unMinion) || unRol.soyMucama()
	}
	
	method tieneEstaminaSuficiente(unMinion) {
		return unMinion.estamina() >= self.estaminaNecesaria()
	}
	
	method estaminaNecesaria() {
		if (soySectorGrande) return 4
		else return 1
	}
	
	method serRealizadaPor(unMinion, unRol) {
		const estaminaUtilizada = self.estaminaNecesaria()
		unRol.limpiarSector(estaminaUtilizada, unMinion)
	}
}


object dificultadLimpieza {
	
	// ------ Punto 2 ------ //
	
	var property dificultad = 10
	
}
