class Dog
  def set_name(name)
    @name = name
  end

  def get_name
    return @name
  end

  def talk
    "woof"
  end
end

class Cat
  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end

  def talk
    "miaow"
  end
end

dog = Dog.new
cat = Cat.new
somedog = Dog.new

dog.set_name("Diffenbaker")
cat.set_name("kitty")

puts dog.get_name
puts cat.get_name
puts somedog.get_name
print somedog.get_name
p somedog.get_name

puts dog.talk
puts cat.talk

puts dog.class
puts dog.get_name.class
puts somedog.get_name.class
