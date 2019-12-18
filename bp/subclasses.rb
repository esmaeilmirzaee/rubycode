class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

boris = Employee.new("Boris", 25)
puts boris.introduce

class Manager < Employee
  def yell
    'Who\'s the boss? I\'m the boss!'
    
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}."
  end

  def yell
    "I'm working! I'm working!"    
  end
end

bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 36)

p bob.introduce
p dan.introduce

puts Manager < Employee
puts Worker < Employee
p Worker < Manager
puts Worker < Manager
puts Worker == Manager
p Worker.ancestors

puts bob.is_a?(Manager)
puts bob.is_a?(Worker)
puts bob.is_a?(Employee)
puts bob.is_a?(Object)
puts bob.is_a?(Kernel)
puts bob.is_a?(BasicObject)

puts

puts bob.instance_of?(Employee)
puts bob.instance_of?(Manager)
puts bob.instance_of?(Object)
puts bob.instance_of?(Kernel)
puts bob.instance_of?(BasicObject)

puts

p bob.introduce
p dan.introduce

p bob.yell
p dan.clock_in('8.30')
p dan.yell
