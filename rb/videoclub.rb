class TipoProducto

	PELICULA = 1
	VIDEOJUEGO = 2
end

class Alquilado

	SI = true
	NO = false	
end

class Producto
	# attr_reader y attr_writer se utiliza para omitir los getters y los setters
	attr_reader :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquilado 
	attr_writer :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquilado

	def obtenerTipoProducto()
		if (@tipo == TipoProducto::PELICULA)
			"Pelicula"
		else	
			"Video Juego"
		end
	end

	def estaAlquilado()
		if (@alquilado == Alquilado::SI)

		else 
			"NO"
		end
	end
end	

class Genero
 	ACCION= 1
	FANTASIA= 2
	DRAMA = 3
	AVENTURA = 4
	PUZZLE = 5
	INFANTIL = 6
end

class Estilo
	ACCION = 1
	DEPORTE = 2
	AVENTURA = 3
	PUZZLE = 4
	INFANTIL = 5
end

class Plataforma
	XBOX = 1
	PLAYSTATION = 2
	WII= 3
end

class Pelicula < Producto
 	attr_reader :genero,:anio,:director,:interpretes
 	attr_writer :genero,:anio,:director,:interpretes
 	def obtenerGenero()
 		case @genero
	 		when Genero::ACCION then "Accion"
	 		when Genero::FANTASIA then "Fantasia"
	 		when Genero::DRAMA then "Drama"
	 		when Genero::AVENTURA then "Aventura"
	 		when Genero::PUZZLE then "Puzzle"
	 		when Genero::INFANTIL then "Infantil"
		end
 	end
 	def obtenerInterpretes()
 		@interpretes.join(",")
 	end
 	def to_s
 		puts "Pelicula"
 		puts "========"
 		puts "Titulo : #{@titulo}"
 		puts "Tipo : #{obtenerTipoProducto}"
 		puts "Precio : #{@precio_alquiler}"
 		puts "Plazo : #{@plazo_alquiler}"
 		puts "Alquilado  : #{estaAlquilado}" #tambien se puede utilizar super.estaAlquilado para acceder al metodo del padre
 		puts "Genero : #{self.obtenerGenero}"
 		puts "Año : #{@anio}"
 		puts "Director : #{@director}"
 		puts "Interpretes: #{self.obtenerInterpretes}"
 	end
end

class Videojuego < Producto
	attr_reader :estilo,:plataforma
 	attr_writer :estilo,:plataforma
 	def obetenerEstilo()
 		case @estilo
	 		when Estilo::ACCION then "Accion"
	 		when Estilo::DEPORTE then "Deporte"
	 		when Estilo::AVENTURA then "Aventura"
	 		when Estilo::PUZZLE then "Puzzle"
	 		when Estilo::INFANTIL then "Infantil"
	 	end
 	end
 	def obetenerPlataforma()
 		case @plataforma
	 		when Plataforma::XBOX then "XBOX"
	 		when Plataforma::PLAYSTATION then "PLAYSTATION"
	 		when Plataforma::WII then "WII"
	 	end
	 end
	 def to_s
	 	puts "Video Juego"
	 	puts "==========="
	 	puts "Titulo : #{@titulo}"
 		puts "Tipo : #{obtenerTipoProducto}"
 		puts "Precio : #{@precio_alquiler}"
 		puts "Plazo : #{@plazo_alquiler}"
 		puts "Alquilado  : #{estaAlquilado}" #tambien se puede utilizar super.estaAlquilado para acceder al metodo del padre
	 	puts "Estilo : #{self.obetenerEstilo}"
	 	puts "Plataforma : #{self.obetenerPlataforma}"
	 end
end

pelicula = Pelicula.new
pelicula.titulo = "Transformers"
pelicula.tipo = TipoProducto::PELICULA
pelicula.precio_alquiler = 2000.0
pelicula.plazo_alquiler = 10
pelicula.alquilado = Alquilado::NO
pelicula.genero = Genero::ACCION
pelicula.anio = 2011
pelicula.director = "Steven Spielberg"
pelicula.interpretes = Array.new
pelicula.interpretes.push("John Wellz")
pelicula.interpretes.push("Edward Witt")
​
puts pelicula