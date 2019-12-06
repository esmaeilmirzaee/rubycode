# [-1, 2, 1, 2, 5, 7, 3]
# Prints the product of the element and its index pos.
# if the index position is greater than the element
# create this within a method

def print_if(array)
  array.each_with_index do |value, index|
    puts value * index unless index < value
  end
end

print_if([-1, 2, 1, 2, 5, 7, 3])
