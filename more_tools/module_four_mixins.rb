module Docking
  def get_docking_params
    # returns params common to all spaceships
  end
end

class Spaceship
  extend Docking
end

Spaceship.get_docking_params
