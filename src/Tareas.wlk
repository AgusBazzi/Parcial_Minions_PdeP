class arreglarUnaMaquina {
	
	const complejidad
	
	method dificultadPara(unMinion) {
		return dificultad * 2
	}
}

class defenderUnSector {
	
	const gradoAmenaza
	
	method dificultadPara(unMinion) {
		const dificultad = gradoAmenaza
		if (unMinion.defiendeMal()) dificultad = dificultad * 2
		return dificultad
	}
}

class limpiarUnSector {
	
	method dificultadPara(unMinion) {
		return dificultadLimpieza.dificultad()
	}
}

object dificultadLimpieza {
	
	var dificultad
	
	method dificultad() {
		return dificultad
	}
}
