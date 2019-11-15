i = 10
puts 'until #1'
until i == 10 do puts i end

puts 'until #2\n do is optional'
until i == 10
  puts i
  i += 1
end

p
puts 'until #3'
puts i until i == 10
