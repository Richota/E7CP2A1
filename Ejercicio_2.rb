# Ejercicio 2: Arrays y strings

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método *.select*.
# - Utilizando *.map* crear una arreglo con los nombres en minúscula.
# - Utilizando *.select* para crear un arreglo con todos los nombres que empiecen con P.
# - Utilizando *.map* crear un arreglo único con la cantidad de letras que tiene cada nombre.
# - Utilizando *.map* y *.gsub* eliminar las vocales de todos los nombres.

print a2 = nombres.select { |e| e.length > 5 }
print "\n\n"

print b2 = nombres.map { |e| e.downcase }
print "\n\n"

print c2 = nombres.select { |e| e[0] == "P" }
print "\n\n"

print d2 = nombres.map { |e| e.length }
print "\n\n"

print e2 = nombres.map { |e| e.gsub(/[aeiou]/i, '') }
