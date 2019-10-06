# Source: https://github.com/ableco/code-school/blob/master/modules/1/exercises/04c-bmi-calculator.md
# Body Mass Index

system 'clear'

peso = 0.0
estatura = 0.0

# verify if input is a number.
# source: https://stackoverflow.com/questions/1235863/how-to-test-if-a-string-is-basically-an-integer-in-quotes-using-ruby
def verifica(numero)
  true if (Float(numero)) && (Float(numero) > 1.0) rescue false
end

# Get BMI value
def bmi_calc(peso, estatura)
  peso / (estatura.to_f**2)
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
  puts "#{test}: Underweight"
when 18.5...25
  puts "#{test}: Healthy weight"
when 25...30
  puts "#{test}: Overweight"
when 30..39.9
  puts "#{test}: Obesity"
when 40..100
  puts "#{test}: Morbid obesity"
else
  puts 'Not a valid value'
end
