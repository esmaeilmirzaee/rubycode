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

p [1, 2, 3].map { |n| puts n**2}

numbers = [3, 8, 11, 15, 89]
def cubes(array)
  array.map { |n| n**3 }
end

p cubes(numbers)

animals = ['Lion', 'Zebra', 'Baboon', 'Cheetah', 'Elephant']

i = 0
while i < animals.length
  puts "#{i}: #{animals[i]}"
  i += 1
end

i = 0
until i < animals.length
  puts "#{i}: #{animals[i]}"
  i += 1
end

prizes = ['Pyrite', 'Pyrite', 'Pyrite', 'Pyrite', 'Gold', 'Pyrite']

i = 0
while i < prizes.length
  current = prizes[i]
  if current == 'Gold'
    puts "Yay! Found Gold!"
    break
  else
    puts "#{current}"
  i += 1
  end
end


numbers = [1, 2, 3, 4, "Hello", 5, 6, 7, 8]
numbers.each do |num|
  if num.is_a?(Fixnum)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "That's not a valid number, I'm done with this nonsense."
    break
  end
end
