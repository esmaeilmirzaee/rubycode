class String
  def number_of_vowels
    gsub(/[^aeiou]/, '').size
  end
end

p "hello".number_of_vowels
p 'something'.number_of_vowels
