array_words = %w[first second third fourth fifth sixth]
p array_words[0]
p array_words[100]
p array_words.at(0)
p array_words.at(100)
p array_words.fetch(0)
#p array_words.fetch(100)
#p array_words.fetch(100, "oops")
p array_words.first
p array_words.last
p array_words.take(3)
p array_words
p array_words.drop(3)
p array_words
p array_words.length
p array_words.count
p array_words.empty?
p array_words.include?(100)
p array_words.include?("first")
p array_words.push("seventh")
p array_words
p array_words << "eighth"
p array_words
p array_words.unshift(0)
p array_words.unshift(3, -3)
p array_words.insert(0, -1, -2, -3)
p array_words.pop
p array_words.shift
p array_words.delete_at(2)
p array_words.delete(2)
p array_words.compact
p array_words.compact!
p array_words.uniq
array_numbers = Array.new(5) { |index| index * 1 }
p array_numbers


