arr = [1, 2, 3, 4, 5]

sum = 0

arr.each_with_index do |value, index|
  puts "index: #{index}: #{value}"
  sum += index * value
end

p sum
