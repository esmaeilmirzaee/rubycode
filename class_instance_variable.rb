# TODO
class Spaceship
  @thruster_count = 2
  def self.thruster_count
  end
end

class SpritelySpaceship < Spaceship
  @thruster_count = 4

  def add(rval)
    @thruster_count + rval
  end

end

class EconolineSpaceship < Spaceship
  @thruster_count = 1
end

puts SpritelySpaceship.thruster_count
puts EconolineSpaceship.thruster_count
spritelySpaceship = SpritelySpaceship.new
puts spritelySpaceship.add 1000
puts Spaceship.thruster_count
