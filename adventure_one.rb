class Thing
  def initialize(name, description)
    @name = name
    @description = description
  end

  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_description(description)
    @description = description
  end

  def get_description
    @description
  end
end

class Treasure < Thing
  def initialise(value)
    @value = value
  end

  def set_value(value)
    @value = value
  end

  def get_value
    @value
  end
end

treasure = Treasure.new("King", "a dominate persion in a teretory")
treasure.set_value(1000)
p treasure.get_value
p treasure.get_name
p treasure.get_description
