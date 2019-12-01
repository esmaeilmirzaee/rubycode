class String
  def censor(word)
    self.gsub!("#{word}", "CENSORD")
  end
  def number_of_chars
    size
  end
end

p "The quick 12 foxes jump over 10 lazy dogs.".censor("dogs")
p "The quick 12 foxes jump over 10 lazy dogs.".number_of_chars

