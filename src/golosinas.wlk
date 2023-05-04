import sabores.*

object bombon {
	
	var peso = 15
	
	method peso()
	{
		return peso
	}
	
	method precio()
	{
		return 5
	}
	
	method sabor()
	{
		return frutilla
	}
	
	method libreDeGluten()
	{
		return false
	}
	
	method mordisco()
	{
		peso = 0.max(peso * 0.8 - 1)
	}
}

object alfajor
{
	var peso = 300
	
	method peso()
	{
		return peso
	}
	
	method precio()
	{
		return 12
	}
	
	method sabor()
	{
		return chocolate
	}
	
	method libreDeGluten()
	{
		return false
	}
	
	method mordisco()
	{
		peso = 0.max(peso * 0.8)
	}
}

object caramelo
{
	var peso = 5
	
	method peso()
	{
		return peso
	}
	
	method precio()
	{
		return 1
	}
	
	method sabor()
	{
		return frutilla
	}
	
	method libreDeGluten()
	{
		return true
	}
	
	method mordisco()
	{
		peso = 0.max(peso - 1)
	}
}

object chupetin
{
	var peso = 7
	
	method peso()
	{
		return peso
	}
	
	method precio()
	{
		return 2
	}
	
	method sabor()
	{
		return naranja
	}
	
	method libreDeGluten()
	{
		return true
	}
	
	method mordisco()
	{
		if (peso > 2)
		{
			peso = 0.max(peso * 0.9)
		}
	}
}

object oblea
{
	var peso = 250
	
	method peso()
	{
		return peso
	}
	
	method precio()
	{
		return 5
	}
	
	method sabor()
	{
		return vainilla
	}
	
	method libreDeGluten()
	{
		return false
	}
	
	method mordisco()
	{
		if (peso > 70)
		{
			peso = 0.max(peso * 0.5)
		}
		else if (peso < 70)
		{
			peso = 0.max(peso * 0.75)
		}
	}
}

object chocolatin
{
	var property peso
	
	method precio()
	{
		return peso * 0.5
	}
	
	method sabor()
	{
		return chocolate
	}
	
	method libreDeGluten()
	{
		return false
	}
	
	method mordisco()
	{
		peso = 0.max(peso - 2)
	}
}

object golosinaBanada
{
	var property golosina
	var pesoBanado = 4
	
	method peso()
	{
		return golosina.peso() + pesoBanado
	}
	
	method pesoBanado()
	{
		return pesoBanado
	}
	
	method precio()
	{
		return golosina.precio() + 2
	}
	
	method sabor()
	{
		return golosina.sabor()
	}
	
	method libreDeGluten()
	{
		return golosina.contieneGluten()
	}
	
	method mordisco()
	{
		pesoBanado = 0.max(pesoBanado - 2)
		golosina.mordisco()
	}
}

object tuttiFrutti
{
	var peso = 5
	var property contieneGluten = false
	const sabores = [frutilla, chocolate, naranja]
	var property sabor = frutilla
	var cantMordiscos = 0
	
	method precio()
	{
		if (contieneGluten)
		{
			return 10
		}
		else
		{
			return 7
		}
	}
	
	method mordisco()
	{
		cantMordiscos++
		if (cantMordiscos == 3)
		{
			cantMordiscos = 0
		}
		sabor = sabores.get(cantMordiscos)
		
	}
}














