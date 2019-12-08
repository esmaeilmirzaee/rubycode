# frozen_string_literal: false
fact = 'I am genius and hard-working.'

p fact.index('e')
p fact.index('z')
p fact.index('i')
p fact.index('I')
p fact.index('i', 5)
p fact.index('am')
p fact.rindex('a')

def custom_index(string, substring)
  return nil unless string.include?(substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end


typo = "GeorgWashington"
p typo.dup.insert(5, 'e ')

puts "Thhe aardvark jummmped    over tttthe fence!!!".squeeze

# FIXME: returns only the first character in string
def another_custom_squeeze(string)
  final = ""
  chars = string.split("")
  chars.each_with_index do |char, index|
    final << char[index] unless char[index] == char[index+1]
  end
  final
end

def custom_squeeze(string)
  final = ""
  chars = string.split("")
  chars.each_with_index do |char, index|
    char == chars[index + 1] ? next : final << char
  end
  final
end

p custom_squeeze("Thhe aardvark jummmped    over tttthe fence!!!")

puts "*" * 10
word = "goodbye"
p word
word.clear
p word
