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
end
