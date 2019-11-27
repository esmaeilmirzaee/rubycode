def say_hello(@block)
  puts "Hello World"
  yield
  puts "I said hello"
end

say_hello do
  puts "I am inside of the say hello block."
end
