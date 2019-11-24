class Spaceship
  attr_reader :name
  attr_reader :speed

  def initialize(name)
    @name = name
    @cargo = []
    @speed = 0
    @vessels = Hash.new { [] }
  end

  def [](type)
    @vessels[type]
  end

  def []=(type, vehicles)
    @vessels[type] = vehicles
  end

  def <<(cargo)
    @cargo << cargo
  end

  def <=>(other)
    name <=> other.name
  end

  def +@
    @speed += 10
  end

  def -@
    @speed -= 10
  end

  def !
    puts "Self destruct sequence initiated"
  end
end

ship_one = Spaceship.new("Serenity")

class Lander; end
ship_one[:landers] = [Lander.new, Lander.new]
puts "Landers: #{ship_one[:landers].inspect}"

class CargoPod; end
cargo_pod = CargoPod.new
ship_one << cargo_pod
p ship_one

ship_two = Spaceship.new("Dreadnought")
ship_three = Spaceship.new("Tranquillity")

p [ship_one, ship_two, ship_three].sort.map { |s| s.name }

+ship_one
puts "Speed: #{ship_one.speed}"
-ship_one
puts "Speed: #{ship_one.speed}"

!ship_one
if !ship_one
  puts "Ship isn't there"
end
