# Ejercicio 1: Ejercicios de bloques en Arrays
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# 1. Utilizando *map* generar un nuevo arreglo con cada valor aumentado en 1.
# 2. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *float*.
# 3. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *string*.
# 4. Utilizando *reject* descartar todos los elementos <u>menores</u> a 5 en el array.
# 5. Utilizando *select* descartar todos los elementos <u>mayores</u> a 5 en el array.
# 6. Utilizando *inject* obtener la suma de todos los elementos del array.
# 7. Utilizando *group_by* agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
# 8. Utilizando *group_by* agrupar todos los números mayores y menores que 6.

b = a.map { |e| e + 1 }
print "#{b}\n"

f = a.map { |e| e.to_f  }
# f = a.map(&:to_f)
print "#{f}\n"

s = a.map { |e| e.to_s }
print "#{s}\n"

print menores = a.reject { |e| e < 5 }
print "\n"
print mayores = a.select { |e| e <= 5}
print "\n"

print suma = a.inject(0) { |t, e| t + e}
print "\n"

print h = a.group_by(&:even?)
print "\n"

print i = a.group_by { |e| e > 6 }
