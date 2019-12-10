flavors = ["Chocolate", "Vanilla", "Strawberry", "Rum Raisin"]

p flavors.sample
p flavors.sample(5)

p [1, 2, 3] * 5
p %w(A B C) * 2

def custom_multiply(array, number)
  # Return a new array with the array that's passed in
  # as an argument multiplied by the number argument
  final = Array.new
  number.times { final << array}
  final
end

p custom_multiply([1, 2, 3, 4, 5], 2)

p '=' * 10
p [1, 2, 3] | [3, 4, 5]
p [1, 2].| [2, 1, 3, 4].| [4, 3, 5, 6]

a = [1, 1, 2, 3, 3]
b = [3, 4, 5, 4]

def custom_union(arr1, arr2)
  result = []
  # result = arr1.dup.concat(arr2).uniq
  arr1.concat(arr2).each do |elem|
    result << elem unless result.include?(elem)
  end
  result
end

p custom_union([1, 2, 3, 4, 5], [2, 5, 6, 7, 8])
p '=' * 10

p [1, 1, 2, 2, 1, 3, 4, 3, 2, 4].- [2, 3]
p [1, 1, 2, 2, 1, 3, 4, 3, 2, 4] - [2, 3]
a = [1, 1, 2, 2, 1, 3, 4, 3, 2, 4, true, true, false, nil, 'Str']
b = [2, 3]

def custom_subtraction(arr1, arr2)
  result = []
  arr1.each do |elem|
    result << elem unless arr2.include?(elem)
  end
  result
end
p custom_subtraction(a, b)
p a - b
p '=' * 10

p a & b & [3, 4, 5, 6, 8, 10, true]
def custom_intersection(arr1, arr2)
  result = []
  arr1.uniq.each do |elem|
    result << elem if arr2.include?(elem)
  end
  result
end
p custom_intersection(a, b)
p a & b
p '=' * 10
