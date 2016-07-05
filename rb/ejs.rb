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

 
# 
class GoodDog
	@@count = 0
	def initialize (nombre,edad)
		@name = nombre.capitalize
		@age = edad
		@@count += 1
	end
	def getName ()
		@name
	end

	def getAge ()
		@age
	end

	def getCount ()
		@@count
	end
	def setName (nombre)
		@name = nombre
	end
	def setAge (edad)
		@age = edad
	end
end

sparky = GoodDog.new("Sparky", 4)
fido = GoodDog.new("Fido", 6)
spot = GoodDog.new("Spot", 10)


fido.setName("Oso")
puts fido.getName

fido.setAge("15")
puts fido.getAge


#!/usr/bin/ruby -w# define a class
class Box
  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end   # instance method by default it is public
  def getArea
     getWidth() * getHeight
  end   # define private accessor methods
  def getWidth
     @width
  end
  def getHeight
     @height
  end
  # make them private
  private :getWidth, :getHeight   # instance method to print area
  def printArea
     @area = getWidth() * getHeight
     puts "Big box area is : #@area"
  end
  # make it protected
  #protected :printArea
end# create an object
box = Box.new(10, 20)# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"# try to call protected or methods
box.printArea()



#!/usr/bin/ruby -w# define a class
class Box
  BOX_COMPANY = "TATA Inc"
  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end
  # instance method
  def getArea
     @width * @height
  end
  def printArea
     @area = @width * @height * 2
     puts "Big box area is : #@area"
  end
end# define a subclass
class BigBox < Box
  # add a new instance method
  def printArea
  	 
     @area = @width * @height
     puts "Big box area is : #@area"
  end
  def printArea
  	super

  end
end# create an object
box = BigBox.new(10, 20)# print the area
box.printArea()


#Crea una clase Cuenta con los métodos ingreso, reintegro y transferencia. La clase contendrá un constructor por defecto, un constructor con parámetros, un constructor copia y los métodos getters y setters.

class Cuenta

	def initialize (nombre, cedula, num_cuenta, saldo)
		@name = nombre
		@id = cedula
		@account_num = num_cuenta
		@amount = saldo

	end

	def ingreso (saldo)
		@amount += saldo	
	end

	def retiro (saldo)
		@amount -= saldo	
	end
	def getAmount ()
		@amount
	end
	def transferencia (cuenta2, saldo2)
		#transfiero de cuenta2 el saldo2
		@amount = self.getAmount + saldo2
		#Restar el saldo de que transferi de cuenta2
		cuenta2.retiro(saldo2)
	end
		
end

cuenta2 = Cuenta.new(
	"Carlos", 
	"54877911",
	"24578954565412547850",
	100000.0)

cuenta = Cuenta.new(
	"Juan Eduardo", 
	"43517283",
	"10214536547812456874",
	50000.0)

cuenta.transferencia(cuenta2,30000.0)
#cuenta.ingreso(150000.0)
#cuenta.retiro(80000.0)

puts cuenta.getAmount
puts cuenta2.getAmount



class Contador 
	
	def initialize ()
		@count = 0
	end
	def incrementar (num)
		@count += num
	end
	def decrementar (mnum)
		@count -= mnum
	end

	def getCount 
		@count
	end
end

count.incrementar(5) 
count.decrementar(3)
puts count.getCount
=end

=begin
Un Empresario ha realizado una reunion para recortar gastos en la empresa, por lo tanto ha tomado la decision de despedir los empleados con menor taza de exito, a los empleados se les tomara en cuenta 3 factores… Ganancia Generadas, Horas de Trabajo Diario y Sueldo, en base a esto el Empresario a decidido que despedira a los empleados que sean menos efectivos que otro.
El Empresario medira esto de la siguiente manera: 
Si un empleado A Genera mas ganancia, trabaja mas tiempo diario y tiene un menor sueldo que un empleado B, el empleado B sera despedido.
-> La cantidad de empleados sera entre 1 y 1,000
->Las Ganancias no sobrepasaran 1,000,000.
->Las horas diarias trabajadas no sobrepasaran las 24 horas.
->El sueldo no sera menor o igual a 0 ni mayor a 1,000,000.
->Solo se permitiran numeros enteros.=>Valores de entrada, cantidad de empleados, luego cada valor (Ganancia, Horas de Trabajo, Sueldo), separadas por 1 espacio.
=>Valor de Salida, la cantidad de empleados despedidos.Ejemplo:
Código:
Cantidad de Empleados: 5
Empleado 1: 500 12 300
Empleado 2: 400 14 400
Empleado 3: 100 10 500 #Este sera Despedido.
Empleado 4: 450 11 1000000
Empleado 5: 50 1 10000 #Este tambien sera Despedido.
Cantidad de Empleados Despedidos: 2
=end

class Empleado
	#Constructor
	def initialize	(nombre,ganancia,horas_trabajadas,sueldo)
		@nom = nombre
		@gan = ganancia
		@hor = horas_trabajadas
		@suel = sueldo
	end

	#Metodos getters
	def getNombre()
		@nom
	end
	def getGanancia()
		@gan
	end

	def getHoras()
		@hor
	end

	def getSueldo()
		@suel
	end

	#Metodos setters
	def setNombre(nombre)
		@nom = nombre
	end

	def setGanancia (ganancia)
		@gan = ganancia
	end

	def setHoras (horas)
		@hor = horas
	end

	def setSueldo (sueldo)
		@suel = sueldo 
	end


ArrayEmp = []

puts "Cantidad de empleados:"
n = gets.chomp.to_i


if ((n>=1) and (n<=1000))

	for i in 1..n
		puts "Empleado #{i}: "
		puts "Nombre:"
		nombre = gets.chomp	
		puts "Ganancia"
		ganancia = gets.chomp.to_i
		#retry if (ganancia > 1000000)
		puts	"Horas Trabajadas"
		horas_trabajadas  = gets.chomp.to_i
		#retry if (horas_trabajadas > 24)
		puts "Sueldo"
		sueldo = gets.chomp.to_i
		#retry if (sueldo<= 0 || sueldo > 1000000)

		empleado = Empleado.new(nombre,ganancia,horas_trabajadas,sueldo)

		ArrayEmp.push(empleado)
	end#Fin de for
	cantidad_despedidos = 0 
	#Comparar el empleado con el resto 
	for j in 1..ArrayEmp.length
		
		emp = ArrayEmp[j]
	end
		for k in j+1..ArrayEmp.length
			
			emp2 = ArrayEmp[k]
		end
			if (emp.getGanancia() < emp2.getGanancia() and
			emp.getHoras() < emp2.getHoras() and 
			emp.getSueldo() > emp2.getSueldo())
			puts "Este empleado #{emp.getNombre}sera despedido."
			cantidad_despedidos += 1
			end
		
	
else	
	puts "La cantidad de empleados es entre 1 y 1.000"
end
end
puts "Cantidad de empleados despedidos #{cantidad_despedidos}"

