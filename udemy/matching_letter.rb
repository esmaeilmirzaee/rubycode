string = "The quick 12 foxes jump over 10 lazy dogs"
letters_with_space = string.split("").map(&:downcase)
#.join(/[a-zA-z]/)
letters_without_space = letters_with_space - [" "]
result_sentence = string.gsub(/[a-zA-z\d+]/, "_").split("")
#p letters_with_space
#p letters_without_space
#p result_sentence
#p letters_without_space.count
#p result_sentence.count("_")
#p letters_with_space.count("")
while letters_with_space.count("") < letters_without_space.count
	puts "Please enter a letter: "
	letter = gets.downcase.chomp
	
	if letters_with_space.include?(letter)
		puts "Correct 👏"
		index = letters_with_space.find_index(letter)
		letters_with_space[index] = ""
		result_sentence[index] = letter
		puts "#{result_sentence.join}"
	else
		puts "Incorrect! 🙌"
	end
end