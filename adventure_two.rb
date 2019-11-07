class Thing
  def intialize(name, description)
    @name = name
    @description = description
  end
  def set_name(name)
    @name = name
  end
  def get_name
    @name
  end
end

class Treasure < Thing
  def initialize(value)
    @value = value
  end
  def set_value(value)
    @value = value
  end
  def get_value
    @value
  end
end

class Room < Thing
  def initialize(exists)
    @exists = exists
  end
  def set_exists(exists)
    @exists = exists
  end
  def get_exists
    @exists
  end
end

class Weapon < Treasure
  def initialize(destructive_power)
    @destructive_power = destructive_power
  end
  def set_destructive_power(destructive_power)
    @destructive_power = destructive_power
  end
  def get_destructive_power
    @destructive_power
  end
end

class Jewel
  def initialize(type_of_gem)
    @type_of_gem = type_of_gem
  end
  def set_type_of_gem(type_of_gem)
    @type_of_gem = type_of_gem
  end
  def get_type_of_gem
    @type_of_gem
  end
end

class Vault
  def initialize(combination_lock)
    @combination_lock = combination_lock
  end
  def set_combination_lock(combination_lock)
    @combination_lock = combination_lock
  end
  def get_combination_lock
    @combination_lock
  end
end
