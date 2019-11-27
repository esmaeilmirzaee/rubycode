name = "Esmaeil"
print "Enter your desirable name? "
#input = gets.chomp
until name.downcase.match(gets.chomp.downcase)
  print "Enter your desirable name? "
end

for animal in %w(dog cat horse wolf lion tiger) do
  next if animal == "cat"
  puts "The current animal is #{animal}."
end
end
