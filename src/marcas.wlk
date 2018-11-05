class Cerveza{
	var property lupulosPorLitro
	const property pais
}


class CervezaRubia inherits Cerveza{
	var property graduacionAlcoholica	
}

class CervezaNegra inherits Cerveza{
	
	method graduacionAlcoholica() = reglamentariaMundial.graduacionReglamentaria()
		.min(lupulosPorLitro*2)
}

class CervezaRoja inherits CervezaNegra {
	
	override method graduacionAlcoholica() = super() * 1.25	
}

object reglamentariaMundial{
	var property graduacionReglamentaria = 0
}