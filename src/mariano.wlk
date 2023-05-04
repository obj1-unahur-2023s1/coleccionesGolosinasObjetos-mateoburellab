import golosinas.*

object mariano
{
	const golosinasCompradas = []
	var golosinasDeseadas
	
	method comprar(golosina)
	{
		golosinasCompradas.add(golosina)
	}
	
	method desechar(golosina)
	{
		if (golosinasCompradas.contains(golosina))
		{
			golosinasCompradas.remove(golosina)
		}
	}
	
	method cantidadDeGolosinas()
	{
		return golosinasCompradas.size()
	}
	
	method tieneLaGolosina(golosina)
	{
		return golosinasCompradas.contains(golosina)
	}
	
	method probarGolosinas()
	{
		golosinasCompradas.forEach({golosina => golosina.mordisco()})
	}
	
	method hayGolosinasSinTACC()
	{
		return golosinasCompradas.any({golosina => golosina.libreDeGluten()})
	}
	
	method preciosCuidados()
	{
		return golosinasCompradas.all({golosina => golosina.precio() <= 10})
	}
	
	method golosinaDeSabor(sabor)
	{
		return golosinasCompradas.find({golosina => golosina.sabor() == sabor})
	}
	
	method GolosinasDeSabor(sabor)
	{
		return golosinasCompradas.filter({golosina => golosina.sabor() == sabor})
	}
	
	method sabores()
	{
		return golosinasCompradas.map({golosina => golosina.sabor()}).asSet() //asSet() para que no se repitan los valores
	}
	
	method golosinaMasCara()
	{
		return golosinasCompradas.max({golosina => golosina.precio()})
	}
	
	method pesoGolosinas()
	{
		return golosinasCompradas.sum({golosina => golosina.peso()})
	}
	
	method golosinasFaltantes(unasGolosinasDeseadas)
	{
		golosinasDeseadas = unasGolosinasDeseadas.asSet()
		return golosinasDeseadas.difference(golosinasCompradas.asSet())
		/* PROBAR: 
		return unasGolosinasDeseadas.asSet().difference(golosinasCompradas.asSet())
		*/
	}
	
	method gustosFaltantes(unosGustosDeseados)
	{
		
	}
}










