def cotizador(x)
  costo = $valor * 1.16
  puts 'El costo del equipo es: ' + costo.round(2).to_s
  input = ''
  while input != 'e'
    puts 'Ingrese el porcentaje de la ganancia:'
    ganancia = gets.chomp
    total_ganancia = costo.to_f * ganancia.to_f
    puts 'La ganancia es de: ' + total_ganancia.round(2).to_s
    precio = costo + total_ganancia
    puts 'El precio sin IVA del equipo es: ' + precio.round(2).to_s
    precio_final = precio * 1.16
    puts 'El precio final del equipo es: ' + precio_final.round(2).to_s
    puts 'Para salir presione (e), o cualquier otra teclar para recotizar'
    input = gets.chomp
  end
end

puts 'Ingrese el monto:'
$valor = gets.chomp.to_i
puts 'el valor es en pesos(1) o en dolares(2):'
opcion = gets.chomp.to_i
if opcion == 1
  cotizador($valor)
else opcion = 2
  puts 'Tipo de cambio al dia'
  dolar = gets.chomp.to_i
  $valor = $valor * dolar
  puts 'El costo en pesos es de:' + $valor.to_s
  cotizador($valor)
end
