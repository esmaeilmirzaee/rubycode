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

phrase = "The Ruby Programming Language is amazing!"
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

seach_for = "Language"
def custom_include?(string, substring)
  len = substring.length
  string.chars .each_with_index do |char, index|
    string[index, len] == substring ? true : false
  end
end
p custom_include?(phrase, seach_for)

puts

puts //.class
puts phrase =~ /T/
puts phrase =~ /R/
puts phrase =~ /m/
puts /m/ =~ phrase
# puts /!/ =~ phrase
# puts phrase =~ / /
p phrase =~ /x/ # puts does not print nil, rather it prints just a blank line.
puts phrase =~ /anguage/

puts

voicemail = "I can be reached at 555-123-4567 or send email to regexman@gmail.com."
p voicemail.scan(/e/) # provides an array
p voicemail.scan(/re/)
p voicemail.scan(/[re]/)

puts

p voicemail.scan(/d/)
p voicemail.scan(/\d/)
p voicemail.scan(/\d+/)
p voicemail.scan(/\D/).count
p voicemail.scan(/\s/).length
p voicemail.scan(/\S/).length

puts

paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."
puts paragraph.scan(/./) # any character at all.
puts paragraph.scan(/\./) # dots

puts paragraph.scan(/d/) # d's
puts paragraph.scan(/\d/) # any digit
puts paragraph.scan(/\D/) # any non-digit
puts paragraph.scan(/\s/) # any white space
puts paragraph.scan(/ /)  # any white space
puts paragraph.scan(/\s+/)# any white space (tabs, 2,3,4,... space)
puts paragraph.scan(/\S/) # any non-space

puts

poem = "99 bottles of beer of the wall, 99 bottles of beer."
p poem.scan(/\d+/)
p poem.scan(/\A\d+/) # start of the string
p poem.scan(/\A\d/)  # start of the string only one digit
p poem.scan(/\a\d/)  # TODO not working; just a discovery of curiosity
p poem.scan(/eer.\z/) # end of the string
