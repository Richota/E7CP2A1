## Ejercicio 3: Array de hashes

# 1. Crear un menú que permita registrar la información de los alumnos del curso.
#
# 2. Opción 1: Permite ingresar los datos de una persona:
#     - Nombre
#     - Edad
#     - Comuna
#     - Género
#
# 3. Opción 2: Permite editar los datos de la persona.
# 4. Opción 3: Permite eliminar una persona.
# 5. Opción 4: Muestra la cantidad de personas ingresadas.
# 6. Opción 5: Muestra las comunas de todas las personas.
# *hint:* Generar un array con las comunas, eliminar repeticiones.
# Considerar que pueden haber nombres escritos con mayúscula y minúscula.
# 5. Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
# 6. Opción 7: Muestra la suma de las edades de todas las personas.
# 7. Opción 8: Muestra el promedio de las edades del grupo.
# 8. Opción 9: Muestra dos listas de personas, una por cada género.
# 9. El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir)
alumno = []
opcion = 0
txt_menu = <<MENU
Seleccionar una opción
1. Agregar alumno
2. Modificar alumno
3. Eliminar alumno
4. Mostrar total Alumnos
5. Mostrar Comunas
6. Mostrar suma edades alumnos
7. Mostrar promedio edades alumnos
8. Mostrar listado por género
9. Salir
MENU

def opcion_1(alu)
print "Agregar alumno nuevo\n"
print "Ingresando Nombre, Edad, Comuna, Genero\n"
print "ingrese nombre :\n"
name = gets.chomp
print "ingrese edad :\n"
age = gets.chomp
print "\n"
print "ingrese Comuna :\n"
commune = gets.chomp
print "ingrese Genero (M / F):\n"
gender = gets.chomp
print "\n"
alu.push(nombre: name, edad: age.to_i, comuna: commune, genero: gender)
print alu
print "\n"
end

def opcion_2(chatito)
  print "Ingrese Nombre del alumno que desea modificar\n"
  name = gets.chomp
  elegido = chatito.select { |person| person[:nombre] == name }
  chatito.delete_if {|person| person[:nombre] == name}
  puts 'estos son los valores actuales'
  puts elegido
  opcion_1[chatito]
end

def opcion_3()
end

def opcion_4(alu)
  print "La cantidad de alumnos ingresados es: #{alu.length}"
  print "\n\n"
end

def opcion_5(alu)
comunas = alu.map { |e| e.values[2] }
print comunas
print "\n\n"
end

def opcion_6(alu)
suma = alu.map { |e| e.values[1] }
print "El total de las edades de los alumnos es: #{suma.sum}"
print "\n\n"
end

def opcion_7(alu)
suma = alu.map { |e| e.values[1] }
print "El primedio de las edades de los alumnos es: #{(suma.sum / alu.length).to_f}"
print "\n\n"
end

def opcion_8(alu)
  nombres = alu.map { |e| [e.values[0], e.values[3]] }
  print nombres
  print "\n"
  generos = nombres.group_by { |e| e[1] == "m" }
  print generos
  print "\n\n"
end

while opcion != 9
  print txt_menu
  opcion = gets.to_i
  case opcion
  when 1
    opcion_1 alumno
  when 2
    opcion_2 alumno
  when 3
    opcion_3 alumno
  when 4
    opcion_4 alumno
  when 5
    opcion_5 alumno
  when 6
    opcion_6 alumno
  when 7
    opcion_7 alumno
  when 8
    opcion_8 alumno
  when 9
    print "Elegiste salir\n\n"
  else
    print "Error de opcion\n\n"
  end
end
