class JarraDeCerveza {
	var property capacidadEnLitros
	var property marca
	
	method contenidoAlcoholico() = (marca.graduacionAlcoholica() / 100) * capacidadEnLitros
	
	method cantidadLupulosEnJarra() = capacidadEnLitros * marca.lupulosPorLitro() 
}
