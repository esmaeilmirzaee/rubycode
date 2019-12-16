module Square
  def area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end

puts Square.area(20)
puts Circle.area(3).round(3)
puts Rectangle.area(5, 6)
