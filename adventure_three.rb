class Thing
  attr_reader :name
  attr_reader :description
  attr_writer :name
  attr_writer :description
  def initialize(name, description)
    @name = name
    @description = description
  end
end

class Treasure < Thing
  attr_reader :value
  attr_writer :value
  def initialize(value)
    @value = value
  end
end

aThing = Thing.new
aThing.name = "Samuel"
aThing.description = "A developer"

