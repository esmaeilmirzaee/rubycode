class Thing
  # both setter and getter method
  #attr_accessor :name
  attr_reader :name
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

a_thing = Thing.new("Toy")
puts a_thing.name
a_thing.name = "Computer"
puts a_thing.name
