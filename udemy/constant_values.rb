MYCONST = 100
x = "Hello World"
$y = 'hello there'

def method
  puts 'entering a method'
  x = 10
  puts x
  puts $y
  $y = 'goodbye'
  puts 'leaving the method'
end

puts x
puts $y
method
puts x
puts $y
puts Math::PI
MYCONST = 500
puts MYCONST
Math::PI = "A new value"
puts Math::PI
