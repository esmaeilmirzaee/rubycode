words = %w[Given an array of strings return only the words that are over 5 letters]
p words.size
words.each do |w|
  w.length > 4
end

p words.select { |word| word.length > 4 }
#p words.select { |word| word //)
