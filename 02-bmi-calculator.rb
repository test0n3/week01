# Source: https://github.com/ableco/code-school/blob/master/modules/1/exercises/04c-bmi-calculator.md
# Body Mass Index

system 'clear'

peso = 0.0
estatura = 0.0

# verifgy if input is a number.
def verifica(numero)
  puts "value of verifica: #{!(numero.is_a? Numeric) || numero < 1.0}"
  if (numero.is_a? Numeric) 
    if (numero > 1.0)
      return true
    end
  end
  return false
end

# Get BMI value
def bmi_calc(peso, estatura)
  peso / (estatura.to_f ** 2)
end

loop do
  puts 'Input weight in kilograms: '
  peso = gets.chomp
  break if verifica(peso)
end

loop do
  puts 'Input height in meters: '
  estatura = gets.chomp
  break if verifica(estatura)
end

test = bmi_calc(peso.to_f, estatura.to_f)

case test
when 1...18.5
  texto = "#{test}: Underweight"
when 18.5...25
  texto = "#{test}: Healthy weight"
when 25...30
  texto = "#{test}: Overweight"
when 30..39.9
  texto = "#{test}: Obesity"
when 40..100
  texto = "#{test}: Morbid obesity"
else
  texto = 'Not a valid value'
end

puts texto
