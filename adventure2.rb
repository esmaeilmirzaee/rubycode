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
