#Calcular  la suma de los cuadrados x^2 de los números entre 1 y n.
=begin
n = gets.chomp.to_i
total = 0
for suma in (1..n)
  potencias = (suma)**2
  total += potencias 
end
puts total

#Realizar un algoritmoque lea n números y obtenersupromedio, el número menor y el número mayor.
puts "ingrese cuantos numeros quiere promediar"
n = gets.chomp.to_i
acum = 0 
max = 0
min = Float::MAX 
for i in 1..n
	puts "Ingrese numero #{i}: "
	num = gets.chomp.to_f
	acum += num
	if (num > max)
		max = num
	end
	if (num < min)
		min = num 
	end
end

#Escribir un algoritmo que recibe un número n, y se retorne las tablas de multiplicar del 1 al 20 de dicho número.!
prom = acum / n
puts "Promedio: #{prom} - Min : #{min} - Max : #{max} "

puts "Ingrese el numero a multiplicar"
n = gets.chomp.to_i
for multiplicacion in 1..20
	puts multiplicacion * n
end



#Reto Números amigos!Un par de número son amigos cuando la suma de los divisores de un número es igual a la suma de los divisores de la suma. 

puts "Ingrese un numero"
n = gets.chomp
 for i in 1...n
 	dividision = n % i == 0
 	puts division 
 end


 puts "Introduzca su edad"
 edad = gets.chomp.to_s
 puts "Introduzca su peso"
 peso = gets.chomp.to_f
 puts "Introduzca su estatura"
 estatura = gets.chomp.to_f

 while (edad < 45.to_s)
 	conversion = (estatura * 100)**2
 end

 puts conversion


objects =[1,2,3,4,5,6]

objects.each {|num| puts num}

a = [5,3,2,4,7,1,8]

a.delete (3)
a = a.drop (3)
a = a.include?(9)
a = a.include?(3)
a = a.first 
a = a.first (3)
a= a.reduce (:/)
a = a.inject {|n,i|n+i}
a = a.join 
a = a.insert(2,9)
a = a.map {|x| x**2}
a = a.push(5,3)
a = a.pop
a = a.pop(2)
a = a.select {|x| x.even?}
a = a.shuffle
a = a.sort
puts a


a = [2,8,80,3,5,60,27,15]
a.each {|x| puts x if  x%3 == 0 }


a = [2,4,6,8,10]
b = [1,3,5,7,9]
c = []
=end
puts "Encuesta"

	#creamos variables contadores incializados en cero para la respuesta del usuario
	contar_tv_s = 0 #variable que cuenta los que tienen tv
	contar_tv_n= 0 #variable que cuenta los que  no tienen tv
	contar_tv_c = 0 #variable que cuenta a los que les gusta el tv a color
	contar_tv_b= 0 #variable que cuenta a los que les gusta el tv a Blanco y negro
	contar_tv_comprar_s = 0 #variable que cuenta los que quieren comprar
	contar_tv_comprar_n= 0 #variable que cuenta los que no quieren comprar

	#Encuesta para el usuario
	while true #este es un ciclo infinito
	puts "¿Tiene usted televisor? (S/N)"
	tiene_tv = gets.chomp
	tiene_tv = tiene_tv.upcase

	puts "¿Le gusta a Color o Blanco y Negro? (C/B)"
	es_color = gets.chomp
	es_color= es_color.upcase

	puts "¿Compraría un televisor? (S/N)"
	comprar = gets.chomp
	comprar= comprar.upcase

	#Algoritmo para realizar el conteo
	#Contar los usuarios que tienen TV
	if tiene_tv == "S"
		contar_tv_s += 1
	elsif tiene_tv == "N"
		contar_tv_n += 1 
	else 
		#Stand by 

	end

	#Contar los usuarios que quieren tv a color y  a  #blanco y negro
	if es_color == "C"
		contar_tv_c += 1
	elsif es_color == "B"
		contar_tv_b += 1 
	else
			#Stand by
	end
		
	# Contar usuario s que comprarian tv
	if comprar == "S"
		contar_tv_comprar_s += 1
	elsif comprar == "N"
		contar_tv_comprar_n += 1
	else	
			#Stand by
	end

	puts "¿Continuar la Encuesta? (S/N)"
	continuar = gets.chomp
	continuar = continuar.upcase

	if continuar == "N"
		break;
	end
end#Fin de While

porc_tv_s = (contar_tv_s * 100.0) / (contar_tv_n+contar_tv_s)
porc_tv_n = (contar_tv_n * 100.0) / (contar_tv_n+contar_tv_s)

porc_tv_c = (contar_tv_c * 100.0) / (contar_tv_c+contar_tv_b)
porc_tv_b = (contar_tv_b * 100.0) / (contar_tv_c+contar_tv_b)

porc_tv_s_compra = (contar_tv_comprar_s * 100.0) / (contar_tv_comprar_s+contar_tv_comprar_n)





