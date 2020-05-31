


object farolito {
	method carga(){
		return 0
	}
	method peso(){
		return 0.5
	}
	method esLuminoso(){
		return true
	}
}

object canasto{
	var volumenModelo
	method volumen(cant){
		volumenModelo = cant
	}
	method carga(){
		return volumenModelo * 2 
	}
	method peso(){
		return volumenModelo / 10 
	}
	method esLuminoso(){
		return false
	}
}

object morralDeBici{
	var largoTotal
	var tieneOjo
	
	method ojoDeGato(estado){
		tieneOjo = estado
	}
	method largo(cant){
		largoTotal = cant 
	}
	
	method carga(){
		return largoTotal / 3
	}
	method peso(){
		return 1.2
	}
	method esLuminoso(){
		return tieneOjo
	}
}