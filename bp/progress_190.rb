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

require_relative "../rubyconf2k19/nil_array_return"

puts

phrase = "The Programming Language is amazing!"
puts phrase.start_with?("T")
puts phrase.start_with?("t")
puts phrase.end_with?("!")
puts phrase.end_with?("zing")

def custom_start_with?(string, substring)
  string[0, substring.length] == substring
end

def custom_end_with?(string, substring)
  string[-substring.length..-1] == substring # TODO: NOT WORKING
end

custom_start_with?(phrase, "The")
custom_start_with?(phrase, "the")
custom_end_with?(phrase, "!")
custom_end_with?(phrase, "ing!")
p phrase[-"zing!".length..-1] == "zing!"

puts

puts phrase.include?("programming")
puts phrase.upcase.include?("PROGRAMMING")
