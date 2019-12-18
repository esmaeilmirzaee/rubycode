class Car

  attr_reader :maker
  
  def initialize(maker)
    @maker = maker
  end
   
  def drive
    "Room! Room!"    
  end  
end

class Firetruck < Car
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end
  def drive(speed)
    # `initialize': wrong number of arguments (given 1, expected 0) (ArgumentError) TODO add ()
    super() + "Beep! Beep! I'm driving at #{speed} miles per hour."
  end
end

ft = Firetruck.new("GM", "OOW")
p ft.drive(45)
