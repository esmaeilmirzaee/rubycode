class Gadget

end

puts Gadget.superclass
puts Gadget.superclass.superclass

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

puts phone
puts laptop
puts microwave

puts phone.methods.sort
# puts phone.method(:trust)

puts phone.is_a?(Gadget)
puts phone.is_a?(BasicObject)
puts phone.is_a?(Object)
puts phone.respond_to?(:respond_to?)
puts phone.respond_to?(:length)
puts phone.respond_to?(:methods)
puts phone.respond_to?(:is_a?)

puts

puts phone.object_id
puts laptop.object_id

puts phone == laptop
puts phone.object_id == laptop.object_id

shiny = phone

p shiny.object_id
p shiny.object_id == laptop.object_id
p shiny == laptop

puts
puts

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}."
  end
end

phone = Gadget.new
p phone.inspect
p phone.instance_variables


laptop = Gadget.new
p laptop.instance_variables

puts phone.info

puts laptop.info
