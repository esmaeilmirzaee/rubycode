class Array
  def sum
    total = 0
    self.each { |element| total += element if element.is_a?(Numeric) }
    total
  end
end


p [1, 2, 'hello', false, 3].sum
