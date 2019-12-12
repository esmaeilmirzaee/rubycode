def pass_control
  puts "This is inside the method!"
  yield
  puts "Now I', back inside the method"
end

pass_control { puts "I'mm hard-working!"}
