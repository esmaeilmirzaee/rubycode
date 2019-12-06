numbers = [3, 5, 7]

num = 100

for num in numbers
  puts num
end

p num

numbers.each_with_index do |number, i|
  puts "The current value is #{number} at index #{i}"
  puts number * i
end
