File.open("teams.txt", 'w+') { |f| f.write("Twins, Astros, Mets, Yankees") }

file_to_save = File.new("other_teams.txt", 'w+')
file_to_save.puts("A's, Diamonds, Mariners, Marlins")
file_to_save.close

teams = File.read("teams.txt")
p teams.split(',')

file = File.open("teams.txt", 'a+')
10.times do
  puts "Server is connected"
  file.puts("Server is connected at #{Time.new}")
end

File.delete("teams.txt")
