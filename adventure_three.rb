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

aThing = Thing.new("Sam", "developer")
aThing.name = "Samuel"
aThing.description = "A developer"

aTreasure = Treasure.new("$900")
aTreasure.name = "Gold"
aTreasure.description = "Mineral crude and expensive iron"
aTreasure.value = "$1000"

p (aThing.name)
p (aTreasure.name)
p (aThing.class)
p aTreasure.class
