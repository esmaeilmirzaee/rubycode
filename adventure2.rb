# illustrates how to creating decendent objects
# reading and writing attributes
# object (inatance) variables
# class variables

class Thing
  @@num_things = 0

  attr_reader( :name, :description)
  attr_writer( :description)

  def initialize(name, description)
    @name = name
    @description = description
    @@num_things += 1
  end

  def to_s
    "(Thing.to_s):: The #{@name} Thing is #{@description}."
  end

  def show_classvars
    return "There are #{@@num_things} Thing objects in this game"
  end
end

class Room < Thing
  # TODO: Add Room-specific behaviour
end

class Treasure < Thing
  attr_reader :value
  attr_writer :value

  def initialize(name, description, value)
    super(name, description)
    @value = value
  end
end

class Map
  def initialize(room)
    @rooms = room
  end

  # The to_s method iterates over all the Room objects in @rooms
  # and prints information on each. We'aa come back to look at the
  # implementation of this method later on
  def to_s
    @rooms.each {
      |a_room|
      puts a_room
    }
  end
end

t1= Treasure.new("Sword", "an Elvish weapon forged of gold", 800)
t2= Treasure.new("Dragon Horde", "a huge pile of jewels", 550)

room1= Room.new("Crystal Grotto", "A glittery cavern")
room2= Room.new("Dark Cave", "A gloomy hole in the rocks")
room3= Room.new("Forest Glade", "A verdant clearing filled with shimmering light")

my_map = Map.new([room1, room2, room3])

puts "\nLet's inspect the treasures..."
puts "This is the treasure1: #{t1.inspect}"
puts "This is the treasure2: #{t2.inspcet}"
puts "\nLet's try out the Thing.to_s method..."
puts "Yup, treasure 2 is #{t2.to_s}"
puts "\nNow let's see how our attribute accessors work"
puts "We'll evaluate this:"
puts 't1 name=#{t1.name}, description=#{t1.description}, value=#{t1.value}'
puts "t1 name=#{t1.name}, description=#{t1.description}, value=#{t1.value}"
puts "\nNow we'll assign 100 to t1.value and alter t1.description..."
t1.value = 100
#NOTE: << appends specified string to existing string
t1.description << "(now somewhat tarnished)"
puts "t1 (NOW) name=#{t1.name}, description=#{t1.description}, value=#{t1.value}"
puts "\nLet's take a look at room1..."
puts "room1 name=#{room1.name}, description=#{room1.description}"
puts "\nAnd the map..."
puts "my_map = #{my_map.to_s}"

