sentence = "Once upon a time in a land far far away."

def word_count(string)
  a_hash = Hash.new
  string.split { |word| a_hash[word.downcase.match(/[a-zA-z]+/)] =
  a_hash.include?(word.downcase.match(/[a-zA-z]+/)) ?
  a_hash[word.downcase.match(/[a-zA-z]+/)] + 1 : 1 }
  a_hash
end

puts word_count(sentence)

def another_word_count(string)
  words = string.split
  count = Hash.new(0)
  words.each { |word| count[word] += 1 }
end
another_sentence = "Twelve quick fox jump over ten lazy dogs."
def char_count(string)
  a_hash = Hash.new
  string.split("") { |ch| a_hash[ch.downcase.match(/[a-zA-Z]+/)] =
                     a_hash.include?(ch.downcase.match(/[a-zA-Z]+/)) ?
                       a_hash[ch.downcase.match(/[a-zA-Z]+/)] + 1
                       : 1 }
  a_hash
end

p char_count(another_sentence)
