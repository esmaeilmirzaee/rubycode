class Thing
  def initialize(name)
    @name = name
  end
  def name=(name)
    @name = name
  end
  def name
    @name
  end
end

a_toy = Thing.new("toy")
p a_toy.name
a_toy.name = "computer"
p a_toy.name
