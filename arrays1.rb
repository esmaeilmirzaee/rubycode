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
p array_numbers.each { |a| print a -= 10, " " }
str = ""
p array_words.reverse_each{ |word| str += "#{word} " }
p str
p array_words
p array_numbers { |a| 2*a }
p array_numbers
p array_numbers.select { |a| a>3 }
p array_numbers.select! { |a| a>3 }
p array_numbers.reject { |a| a>3 }
p array_numbers.reject! { |a| a>3 }
p array_numbers.drop_while { |a| a<4 }
p array_numbers
p array_numbers.delete_if { |a| a<4 }
p array_numbers.keep_if { |a| a<4 }
