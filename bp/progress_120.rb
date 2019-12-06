arr = [1, 2, 3, 4, 5, 6, 7]
square = []
arr.each { |n| square << n *2 }
p square

p arr.map { |n| n*2 }

p arr.collect { |n| n*2 }

fahrenheit_temp = [105, 73, 40, 18, -2]

def celsius_fahrenheit(fahrenheit)
  fahrenheit.map { |d| ((d - 32) * (5.0/9.0)).round(2)}
end

p celsius_fahrenheit(fahrenheit_temp)
