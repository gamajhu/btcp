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
=end
a = [5,3,2,4,7,1,8]

#a.delete (3)
#a = a.drop (3)
#a = a.include?(9)
#a = a.include?(3)
#a = a.first 
#a = a.first (3)
#a= a.reduce (:/)
#a = a.inject {|n,i|n+i}
#a = a.join 
#a = a.insert(2,9)
#a = a.map {|x| x**2}
#a = a.push(5,3)
#a = a.pop
a = a.pop(2)
puts a






