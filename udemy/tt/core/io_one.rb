#!/usr/bin/env ruby

File.open("./a_file.txt", "a+") do |file|
  file.puts "Hello World!"
end

puts IO.readlines("./a_file.txt")
