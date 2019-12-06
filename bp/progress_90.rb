numbers = [4, 8, 15, 16, 23, 42]

print numbers
p numbers
puts numbers

toys = ['teddy bear', 'super soaker', 'board game']
print toys
p toys
puts toys

things = [4, true, 'hello', 10.99]
p things

registrations = [true, true, false, true, false]
p registrations

students = [['Boris', 25, true],
            ['Sally', 23, true],
            ['Ingrid', 31]]

print students
puts students

names = %w[Jack Jill John James]

p Array.new(5)
p Array.new(10, [1, 2, 3])
p Array.new(5, 'hello')
p Array.new(3, true)

fruits = ['Apple', 'Orange', "Grape", "Banana"]
p fruits.length
p fruits.size
p fruits[0]
p fruits[6]

fruits.push 'Watermelon'
fruits << 'lemon'
p fruits

p fruits.[](3)
p fruits[3]

p fruits.[](-3)
p fruits[-3]

p fruits[100]
#p fruits.fetch(100)
p fruits.fetch(100, 'watermelon')
p fruits.fetch(200, nil)
p fruits.fetch(300, [1, 2, 3, 4])

p fruits[1..2]

channels = ['CBS', 'FOX', 'NBC', 'ESPN', 'UPN']
p channels.values_at(0, -1, 10, 3, 3)

p numbers.slice(2)
p numbers[2]

p numbers.slice(100)
p numbers[100]

p numbers.slice(3, 5)
p numbers[3, 5]

p numbers.slice(2..5)
p numbers[2..5]

p numbers.slice(2...5)
p numbers[2...5]

fruits[-1] = 'Truffle'
p fruits

fruits[fruits.length] = 'Strawberry'
p fruits

fruits[fruits.length + 3] = 'Lemon'
p fruits

fruits[fruits.length-2, fruits.length-3] = ['Canteloupe', 'Dragonfruit']
fruits[fruits.length] = ['Orange', 'Blackberry', 'Pears']
p fruits

fruits[-1..-3] = ['Apple']
p fruits

p fruits.length
p fruits.size
p fruits.count

puts fruits.nil?
puts fruits.empty?

puts [].empty?
puts [].nil?
puts [false, false, false, true].empty?
puts [false, false, false, true].nil?

p fruits.first
p fruits.last

p fruits.first(1)
p fruits.last(1)

locations = ['House', 'Airport', 'Bar']
p locations

locations.insert(1, 'Restaurant', 'Saloon', 'Cafe')
p locations

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
p arr
arr.pop
p arr.pop
p arr.length

p arr.shift
arr.unshift(25)
p arr
arr.unshift(500, 1, -1, 'sam')
p arr

# equality and inequality
a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]
e = a.reverse

p "a == a: #{a == a}"
p "a == b: #{a == b}"
p "a == c: #{a == c}"
p "a == d: #{a == d}"
p "a == e: #{a == e}"

a = ['Skittles', 'Starbursts', 'Snikers']
b = ['Skittles', 'Starbursts', 'snikers']
p "a == a: #{a == a}"
