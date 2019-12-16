module Announcer
  def who_am_i
    "The name of this class is #{self}."
  end
end

class Dog
  include Announcer
end

class Cat
  extend Announcer
end

watson = Dog.new
# p watson.who_am_i        generates undefined method error due to usage of include
# p Dog.who_am_i           generates undefined method error due to usage of include

# fiddle = Cat.new
# p fiddle.who_am_i
p Cat.who_am_i

class Tiger
  def who_am_i

  end
end

p Tiger.new.who_am_i
