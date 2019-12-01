class Treasure
  def initialize(name, description)
    @name = name
    @description = description
  end
end

class AnotherTreasure
  def initialize(name, description)
    @name = name
    @description = description
  end

  def to_s
    "The #{@name} Treasure is #{@description}\n"
  end
end

a = "hello"
b = 123
c = Treasure.new("ring", "a glittery gold thing")
d = AnotherTreasure.new("sword", "an emerald-encrusted weapon")

p a
p b
p c
p d

puts a
puts b
puts c
puts d

