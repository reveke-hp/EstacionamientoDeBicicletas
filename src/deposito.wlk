import bicis.*
import accesorios.*

object depositos {
	const coleccion = []
	method agregarBici(nombre){
		coleccion.add(nombre)
	}
	method sacarBici(nombre){
		coleccion.remove(nombre)
	}
	method bicisRapidas(){
		return coleccion.filter({bici => bici.velocidad()>25})
	}
	
	method marca(){
		return coleccion.map({bici => bici.marca()})
	}
	
	method esNocturno(){
		return coleccion.all({bici => bici.tieneLuz()})
	}
	
	method tieneBicicletaParaLlevar(kg){
		return coleccion.any({bici => bici.carga() > kg })
	}
	
	method laMasRapida(){
		return coleccion.max({bici => bici.velocidad()})
	}
	method marcaDeLaMasRapida(){
		const laMasRapida = coleccion.max({bici => bici.velocidad()})
		return laMasRapida.marca()
	}
	method cargaDeLasMasLargas(){
		const bicisLargas = coleccion.filter({bici => bici.largoActual() >170})
		return bicisLargas.sum({bici => bici.carga()})
	}
	method sinAccesorios(){
		return coleccion.count({bici => bici.accesorios() == []})
	}
	
}
