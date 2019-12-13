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

currencies = [10, 20, 30, 40, 50]
to_euros = Proc.new { |currency| currency * 0.95 }
to_rupees = Proc.new { |currency| currency * 68.13 }
to_pesos = Proc.new { |currency| currency * 20.70 }
p to_euros
p to_pesos
p to_rupees

ages = [10, 60, 83, 30, 43, 25]
is_old = Proc.new do |age|
  age > 55
end

p ages.select(&is_old)

def pass_control_on_condition
  puts "Inside the method."
  if block_given?
    yield
  end
  puts "Back inside the method."
end

pass_control_on_condition

def pass_control_on_condition_two
  puts "Inside the method."
  yield if block_given?
  puts "Back inside the method."
end

pass_control_on_condition_two

def speak_the_truth
  yield "Boris" if block_given?
end

speak_the_truth { |name| puts "#{name} is brilliant." }
speak_the_truth { |name| puts "#{name} is hard-working!"}

def speak_the_truth_two(name)
  yield name if block_given?
end

speak_the_truth_two("Boris") { |name| puts "#{name} is brilliant!"}
speak_the_truth_two("Boris") { |name| puts "#{name} is incredible!"}


def speak_the_truth_three(name)
  yield name if block_given?
end

speak_the_truth_three("Boris") do |name, age|
  p name
  p age
  puts "#{name} is #{age} years old."
end

def number_evaluation(num_one, num_two, num_three)
  puts "Inside the method."
  yield(num_one, num_two, num_three)
  # puts "Back inside the method!"
end

product = number_evaluation(5, 10, 15) { |n1, n2, n3| n1 * n2 * n3 }
p product

sum = number_evaluation(5, 10, 15) { |n1, n2, n3| n1 + n2 + n3 }
p sum
def custom_each(array)
  i = 0
  until i >= array.length
    p array[i]
    yield array[i]
    i += 1
  end
end

names = ["Boris", "Arnold", "Melissa"]
numbers = [10, 20, 30]

custom_each(names) do |name|
  puts "The length of #{name} is #{name.length}!"
end
custom_each(numbers) do |number|
  puts "The square of #{number} is #{number ** 2}."
end

def greeter
  puts "I'm inside the greeter method."
  yield
end

phrase = Proc.new do
  puts "Inside the proc."
end

# phrase = {puts "Inside the parenthesis."} # impossible
greeter(&phrase)

hi = Proc.new { puts "Hi there"}
5.times(&hi)
5.times { hi.call }

p ["1", "2", "3"].map { |number| number.to_i }
p ["1", "2", "3"].map(&:to_i)
p [10, 20, 30].map(&:to_s)

p [1, 2, 3, 4, 5].select {|number| number.even? }
p [1, 2, 3, 4, 5].select(&:even?)

p [111, 2, 3, 4, 5].reject { |number| number.odd? }
p [111, 2, 3, 4, 5].reject(&:odd?)
