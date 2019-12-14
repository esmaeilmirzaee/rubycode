# frozen_string_literal: false
p 1.class
p 123.class
p -12.234.class
p 12.34.class

p 12.34.class == -1.232.class

p 'hello'.class
p [1, 2].class
p Hash.new(0).class
p true.class
p false.class
p nil.class
p (0..9).class
p //.class

p Proc.new {}.class
p lambda {}.class
p Time.new.class

puts

p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
p 5.class.superclass.superclass.superclass.superclass

p 5.2.class
p 5.2.class.superclass
p 5.2.class.superclass.superclass
p 5.2.class.superclass.superclass.superclass
p 5.2.class.superclass.superclass.superclass.superclass

puts

p [1, 2, "a"].class
p [1, 2, "a"].class.superclass
p [1, 2, "a"].class.superclass.superclass
p [1, 2, "a"].class.superclass.superclass.superclass

puts

p "".class
p "".class.superclass
p "".class.superclass.superclass
p "".class.superclass.superclass.superclass

puts

p Hash.new.class
p Hash.new.class.superclass
p Hash.new.class.superclass.superclass
p Hash.new.class.superclass.superclass.superclass

puts

a_symbol = :something
p a_symbol.class
p a_symbol.class.superclass
p a_symbol.class.superclass.superclass
p a_symbol.class.superclass.superclass.superclass

puts

# This is a ancestor
p 5.class.ancestors
p 5.3.class.ancestors
p "".class.ancestors
p Array.new.class.ancestors
p Hash.new.class.ancestors
a_symbol = :something
p a_symbol.class.ancestors

puts

int_methods = 1.methods.sort
float_methods = 2.2.methods.sort
p int_methods - float_methods

arr_methods = [1, 2, 3].methods.sort
hash_methods = {key: "value"}.methods.sort
p arr_methods - hash_methods

puts
class Thing << String
  def to_s

  end
end
