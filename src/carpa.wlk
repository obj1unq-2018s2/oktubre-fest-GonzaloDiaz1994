class CarpaCervecera {
	const property limiteDePersonas 
	var property tieneBandaMusical
	const property jarraDeCerveza
	var property personasAdentro
	
	method marcaJarra() = jarraDeCerveza.marca()
	
	method cantidadDePersonas() = personasAdentro.size()
	
	method publicoEsPar() =self.cantidadDePersonas().even()
	
	method tieneLugar() = self.cantidadDePersonas() < limiteDePersonas
	
	method dejaIngresar(persona) = self.tieneLugar() and not persona.estaEbrio()
	
	method ingresarPersona(persona){
		if(self.dejaIngresar(persona)){
			personasAdentro.add(persona)
		}
	}
	
	method cantidadEbriosEmpedernidos() = personasAdentro.count{
		persona => persona.esEbrioEmpedernido()
	}
}
