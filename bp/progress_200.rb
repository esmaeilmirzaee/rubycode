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
