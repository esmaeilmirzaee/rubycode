def pass_control
  puts "This is inside the method!"
  yield
  puts "Now I', back inside the method"
end

pass_control { puts "I'mm hard-working!"}

pass_control do
  puts "I am hard-working!"
  puts "Also inside the block."
end

def some_adjective
  puts "A simple yield method."
  yield
  puts "Another put expression."
  yield
end

some_adjective do
  num = 0
  1.upto(10) { |x| num += x }
  puts "sum of 1 to 10 is #{num}."
end
result = some_adjective do
  sum = 0
  0.upto(10) { |n| sum += n }
  "Sum of 0 to 10 is #{sum}."
end

p result

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map { |num| num ** 3 }
b_cubes = b.map { |num| num ** 3 }
c_cubes = c.map { |num| num ** 3 }
p a_cubes
p b_cubes
p c_cubes

cubes = Proc.new { |num| num ** 3 }
a_cubes = a.map(&cubes)
b_cubes = b.map(&cubes)
c_cubes = c.map(&cubes)
p a_cubes
p b_cubes
p c_cubes

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes) }
p a_cubes
p b_cubes
p c_cubes
