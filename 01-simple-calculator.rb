# Source: https://github.com/ableco/code-school/blob/master/modules/1/exercises/04b-simple-calculator.md
#
# Write a program to calculate basic mathematical operations. Ask the user to enter two number figures and support the basic arithmetic operations (addition, subtraction, multiplication, and division).

# You should research about how the operators are called in Ruby.
#

system 'clear' # not usuable in Windows

puts 'Ingresa primer número: '
primero = gets.chomp

puts 'Ingresa operación (+, -, *, /): '
operacion = gets.chomp

puts 'Ingresa segundo número: '
segundo = gets.chomp

case operacion
when '+'
  resultado = primero.to_f + segundo.to_f
when '-'
  resultado = primero.to_f - segundo.to_f
when '*'
  resultado = primero.to_f * segundo.to_f
when '/'
  resultado = primero / segundo.to_f
else
  resultado = 'no se puede procesar'
end

puts "El resultado es: #{resultado}"
