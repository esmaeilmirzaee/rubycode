module Docking
  module ClassMethods
    def get_docking_params
      # returns params common to all spaceships
    end
  end

  def dock
    # ...
  end
end

class Spaceship
  include Docking
  extend Docking::ClassMethods
end
