import accesorios.*

class Bicicleta {
	var rodadoBici = 0
	var largoBici = 0
	const marcaBici = []
	const accesorio = []
	
	method rodado(cant){
		rodadoBici += cant
	}
	method largo(cant){
		largoBici += cant
	}
	method altura() {
		return rodadoBici * 2.5 +15
	}
	method velocidad() {
		return if(largoBici > 120) return rodadoBici + 6
		else return rodadoBici + 2
	}

	method carga(){
		return accesorio.sum({objeto => objeto.carga()})
	}
	method accesorios(){
		return accesorio
	}
	method largoActual(){
		return largoBici
	}
	method peso(){
		return rodadoBici / 2
	}
	method agregarAccesorios(objeto){
		accesorio.add(objeto)
	}
	method tieneLuz(){
		return accesorio.any({objeto => objeto.esLuminoso()})
	}
	method cantidadDeObjetosLivianos(){
		return accesorio.count({objeto => objeto.peso() < 1})
	}
	method establecerMarca(nombre){
		marcaBici.add(nombre)
	}
	method marca(){
		return marcaBici
	}
}

object olmo{
	method nombre(){
		return "Olmo"
	}
}
object legnano{
	method nombre(){
		return "Legnano"
	}
}
