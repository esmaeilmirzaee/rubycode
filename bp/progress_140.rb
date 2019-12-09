a = [1, 2, 3]
b = [1, 2, 3]

p a
p b

p a.object_id
p b.object_id

p a.object_id == b.object_id

c = a
p a
p b
p c

p a.object_id
p b.object_id
p c.object_id

p c.object_id == b.object_id
p a.object_id == c.object_id

a = 4

p a
p b
p c

c = a.dup

c = [1, 2, 3]

p a.object_id == b.object_id
p a.object_id == c.object_id

p a
p b
p c

def sum(*numbers)
  sum = 0
  numbers.each { |num| sum += num}
  sum
end

puts
puts
puts

p sum
p sum 1
p sum(1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 01)

puts
puts

p [1, 2, 3, 4, 5, 6, 7, 8].any? { |n| n.odd? }
p [1, 2, 3, 4, 5, 6, 7, 8].all? { |n| n.even? }

words = %w[dictionary refrigerator platypus microwave]

puts "=" * 10
puts
p words.find { |word| word.length > 8 }
p words.detect { |word| word.length > 8 }

lottery = [4, 8, 15, 16, 23, 42]

result = lottery.find do |n|
  n.odd?
end
p result
numbers = [rand(100), rand(-100), rand(200), rand(10) ,rand(1000) ,rand(100)]
p numbers.uniq

def custom_uniq(array)
  final = []
  array.each do |n|
    final << n unless final.include?(n)
  end
end

sports = %w["Baseball", nil, "Football", nil, nil, "Soccer"]
p sports
p sports[1].class
p sports.compact

p [1, 2, 4].compact
p [1, 2, 3, 4, nil, false, true, true, nil, nil].compact
p [].compact
def custom_compact(array)
  final = []
  array.each { |element| final << element unless element.nil? }
  final
end

p custom_compact(sports)

puts "=" * 10
[10, 20, 30, 40].reduce do |previous, current|
  puts "The previous is #{previous}"
  puts "The current is #{current}"
  # previous + current
end

# p [10, 20, 30, 40].reduce

result = [3, 4, 5, 6, 7].reduce(1) do |previous, current|
  puts "the previous value is #{previous}"
  puts "The current value is #{current}"
  previous * current
end

p result

registrations = [
  ['bob', 'dan', 'jack'],
  ['rick', 'susan', 'molly'],
  ['peirce', 'sean', 'george']
]

p registrations.flatten

puts "=" * 10
names = %w(Bo Moe Joe)
registrations = [true, false, false]
p names.zip(registrations)

p [1, 2, 3].zip([4, 6, {5 => "five"}, 6], ["A", true])
puts "=" * 10

def custom_zip(arr1, arr2)
  final = Array.new
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]]
  end
  final
end

p custom_zip(names, registrations)
