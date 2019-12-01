module AirControl
  # air pumping, maintenance and regeneration
  def measure_oxygen
    # ...
  end
end

class Spaceship
  include AirControl
  # ...
end

ship = Spaceship.new
ship.measure_oxygen

