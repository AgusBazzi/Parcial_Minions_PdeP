class ArreglarUnaMaquina {
	
	const complejidad
	
	method dificultadPara(unMinion) {
		return complejidad * 2
	}
}


class DefenderUnSector {
	
	const gradoAmenaza
	
	method dificultadPara(unMinion) {
		var dificultad = gradoAmenaza
		if (unMinion.defiendeMal()) dificultad = dificultad * 2
		return dificultad
	}
}


class LimpiarUnSector {
	
	method dificultadPara(unMinion) {
		return dificultadLimpieza.dificultad()
	}
}


object dificultadLimpieza {
	
	var property dificultad = 10
	
}
