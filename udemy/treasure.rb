class Thing
  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end
end

class Treasure
  def initialize(name, description)
    @name = name
    @description = description
  end

  # override to string (ie to_s) method
  def to_s
    "The #{@name} Treasure is #{@description}"
  end
end

thing_one = Thing.new
thing_one.set_name("A lovely thing")
puts thing_one.get_name


treasure_one = Treasure.new("Sword", "an Elvish weapon forged of gold")
t2 = Treasure.new("Ring", "a magic ring of great power")
puts treasure_one.to_s
puts t2.to_s

puts "Inspecting thing: #{thing_one.inspect}"
puts "Inspecting first treasure: #{treasure_one.inspect}"
p "Inspecting thing: #{thing_one.inspect}"
p "Inspecting treasure_one: #{treasure_one.inspect}"
