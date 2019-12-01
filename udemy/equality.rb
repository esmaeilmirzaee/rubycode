class Spaceship
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    name == other.name
  end
end


ship1 = Spaceship.new("Serenity")
ship2 = Spaceship.new("Serenity")

puts ship1.equal?(ship2)
puts ship1.name == ship2.name
puts ship1.name.equal?(ship2.name)
