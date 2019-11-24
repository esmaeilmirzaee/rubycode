powered = 2**1000
arr = Array.new()
powered.to_s.split('').to_a.each { |n| arr.push n.to_i }
p arr.inject(&:+)

another_powered = 2**1000
p powered.to_s.split(//).map(&:to_i).inject(:+)
