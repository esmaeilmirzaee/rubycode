def get_name(&block)
  print "Enter your name: "
  name = gets.chomp
  yield name
  puts "It was nice to meet you, #{name}."
end

get_name do |name|
  puts "Hi, #{name}."
  puts "Uppercased, your name is #{name.upcase}."
end
