ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{number ** 2}"
end

puts "This is the beginning!"

load "end.rb"

puts "Alright, that was successful."

load "./end.rb"

puts "This is the beginning!"
require "./end.rb" # using extension is optional
require "./end" # it is redundant
File.open("./end.rb", "a") do |file|
  file.puts "puts 'one more thing.'"
end
require "./end.rb" # It does not work
load "./end.rb"
