p1 = Proc.new { |bla| puts "I'm a proc that says #{bla}!" }
p2 = proc { |bla| puts "I'm a proc that says #{bla}!" }

p1.call "yay!"
p2.call "yay!"
p1.yield "wow!"
p2.yield "wow!"
p1.("nothing!")
p2.("nothing!")
p1["hello"]
p2["hello"]
