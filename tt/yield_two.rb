def show_numbers(number=10)
  i = 0
  while i < 10
    yield i
    i += 1
  end
end

show_numbers do |number|
  puts "The current number is #{number}."
end
