system "clear"

puts "Ingresa primer número:"
primero = gets.chomp

puts "Ingresa operación (+, -, *, /):"
operacion = gets.chomp

puts "Ingresa segundo número:"
segundo = gets.chomp

case operacion
when "+"
    resultado = primero.to_f + segundo.to_f
when "-"
    resultado = primero.to_f - segundo.to_f
when "*"
    resultado = primero.to_f * segundo.to_f
when "/"
    resultado = primero.to_f / segundo.to_f
else
    resultado = "no se puede procesar"
end

puts "El resultado es: #{resultado}"