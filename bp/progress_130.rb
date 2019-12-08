# frozen_string_literal: true
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
  end
end
