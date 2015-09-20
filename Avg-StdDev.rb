#Programa que calcula la media y la desviacion estandar de un conjunto de n numeros reales leidos desde stdin separados por " "
#Utilizar listas encadenadas para almacenar los datos

def average(numbers)
  return numbers.reduce(:+) / numbers.length
end

def stdDev(numbers, average)
  return Math.sqrt( ( numbers.map{ |i| ( i - average ) ** 2 }.reduce(:+)) / ( numbers.length - 1 ) )
end

#capture from stdin and parse as floats
numbers = gets.split(" ").map!(&:to_f)

if numbers.size == 0
  exit
else
  #perform calculations
  avg = average(numbers)
  stdev = stdDev(numbers, avg)

  #output calculations
  puts "\nAverage: %.2f Standard Deviation: %.2f" % [ avg, stdev ]
end