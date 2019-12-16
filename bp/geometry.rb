
# .rb extension is optional
# living in the same directory so require_relatives removes ./
require "./rectangle"
require_relative "Square"
require_relative "Circle"

puts Rectangle.area(13, 9)
puts Square.area(5)
puts Circle.area(3)
