# Body Mass Index

system "clear"
peso = 0.0
estatura = 0.0

# verifica si número
def verifica(numero)
    return !(numero.is_a? Numeric) || numero == 0.0
end

#Cálculo de indice de masa corporal
def bmiCalc(peso, estatura)
    peso/(estatura**2)
end

loop do
    puts "Ingrese Peso en kg:"
    peso = gets.chomp
    break if verifica(peso)
end

loop do
    puts "Ingrese Estatura en m:"
    estatura = gets.chomp
    break if verifica(estatura)
end

test = bmiCalc(peso.to_f, estatura.to_f)

case test
when 1...18.5
    texto = "#{test}: Underweight"
when 18.5...25
    texto = "#{test}: Healthy weight"
when 25...30
    texto = "#{test}: Overweight"
when 30..39.9
    texto = "#{test}: Obesity"
else 
    texto = "#{test}: Morbid obesity"
end

puts "#{texto}"