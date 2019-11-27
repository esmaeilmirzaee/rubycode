def say_hi(&block)
  puts "Hello World"
  block.call
end

say_hi {puts "Hey babe"}
