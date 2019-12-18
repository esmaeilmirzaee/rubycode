class Bicycle
  @@maker = "BikeTech"
  # counting the number of objects has been created from the current class.
  @@count = 0

  # It is feasible to use class name instead of self however in the future by changing the class name all the described methods name must change as well.
  # def Bicycle.description
  def self.description
    "Hi there, I'm the blueprint for Bicycle! Use me to create a bicycle object."
  end

  def self.count
    @@count
  end

  # This is an instance method. so each instances can access them.
  def maker
    @@maker    
  end

  def initialize
    @@count += 1
    
  end
end

puts Bicycle.description
# puts Bicycle.@@count it is protected unless we expose them; so we created method self.count.
puts Bicycle.count

# puts Bicycle.maker undefined method
bike = Bicycle.new
puts bike.maker
 
a = Bicycle.new
b = Bicycle.new
c = Bicycle.new
d = Bicycle.new
p Bicycle.count
