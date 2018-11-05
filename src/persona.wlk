class Persona{
	var property peso
	var property jarrasCompradas = []
	var property escuchaMusicaTradicional
	var property aguante

	method estaEbrio() = (self.cantidadAlcoholIngerido() * peso) > aguante
	
	method leGustaMarca(marca)
	
	method comprarJarra(jarraDeCerveza){
		jarrasCompradas.add(jarraDeCerveza)
	}
	
	method cantidadAlcoholIngerido() = jarrasCompradas.sum{
		jarrasDeCerveza => jarrasDeCerveza.contenidoAlcoholico()
	}
	
	method coincideGustoMusical(carpa) = escuchaMusicaTradicional == carpa.tieneBandaMusical()
	
	method quiereEntrarACarpa(carpa) = self.leGustaMarca(carpa.marcaJarra()) and 
		self.coincideGustoMusical(carpa)
		
	method puedeEntrarACarpa(carpa) = self.quiereEntrarACarpa(carpa) and carpa.dejaIngresar(self)
	
	method ingresarACarpa(carpa){
		if(self.puedeEntrarACarpa(carpa)){
			carpa.ingresarPersona(self)
		}
	}
	method esEbrioEmpedernido() = jarrasCompradas.all{jarra => jarra.capacidadEnLitros() >= 1}
	
	method nacionalidad()
	
	method esPatriota() = jarrasCompradas.all{jarra => jarra.marca().pais() == self.nacionalidad()}
		
}class Aleman inherits Persona{
	
	override method nacionalidad() = "alemania"
	
	override method leGustaMarca(marca) = true
		
	override method quiereEntrarACarpa(carpa) = super(carpa) and carpa.publicoEsPar()
	
}
class Belga inherits Persona{
	
	override method nacionalidad() = "belgica"
	
	override method leGustaMarca(marca) = marca.lupulosPorLitro() > 4 
}
class Checo inherits Persona{
	
	override method nacionalidad() = "republica checa"
	
	override method leGustaMarca(marca) = marca.graduacionAlcoholica() > 8
}
