#!/bin/ruby env

def custom_concat(arr1, arr2)
  # return arr1 with all of the elements from arr2
  # added to the end of it
  arr1.concat(arr2)
  # arr2.each { |n| arr1 << n}
  arr1
end

p custom_concat([1, 2, 3, 4], [5, 6])

numbers = [83.78, 99.09, 88, 83.781, 103.7]

p numbers.max
p numbers.min

fruits = ["apple", "kiwi", 'watermelon', 'orange', 'banana']

p fruits.max
p fruits.min

def custom_max(arr)
  # return the maximum value in the array
  arr.sort[-1]
end

def custom_min(arr)
  # return the minimum value in the array
  arr.sort[0]
end

p custom_max(numbers)
p custom_min(numbers)

p fruits.include?('watermelon')
p fruits.include?('Watermelon')

colours = %w(red, blue, green, red)

p colours


p colours.index('Orange')
p colours.index('red')
p colours.index('Red')

p colours.find_index('Orange')
p colours.find_index('red')
p colours.find_index('Red')

grades = [80, 95, 13, 76, 28, 39]

matches = grades.select do |n|
  n >= 81
end

p matches

words = %w(level selfless racecar dinosaur)

def palindrome(word)
  word == word.race
end

result_select = words.select { |word| word == word.reverse}

result_reject = words.reject { |word| word == word.reverse}

p result_select
p result_reject

users = [['Bob', 25, 'Male'], ['Susan', 48, 'Female'], ['Larry', 34, 'Male']]
# this is a comment

p users[0]
p users[0][0]

bob, susan, larry = users
p bob

p (787_000/12.0).round(2)

foods = %w(Steak Vegetables SteakBurger Kale Tofu TunaSteaks)

one = foods.reject { |food| food.include?('Steak')}
two = foods.select { |food| food.include?('Steak')}

p one
p two

p foods.partition { |food| food.include?("Steak")}

one, two = foods.partition { |food| food.include?('Steak')}

p one
p two

sentence = "The twelve quick brown fox jump over ten lazy dogs."
p sentence.split
p sentence.split("")
p sentence.split(" ")
p sentence.split(".")

p "A Word".each_char { |char| puts char}

name = "Esmaeil"
letters = name.chars
p letters

names = [name, "Moe", "Joe", "Bob"]

p names.join
p names.join(" ")
p names.join("-")


def custom_join(array, delimiter="")
  str = ""
  array.each do |v|
    if v == array[0]
      str << v
      next
    end
    str << delimiter << v
  end
  str
end

p custom_join(names)
p custom_join(names, "'")
p custom_join(names, '-')
p custom_join(names, '!==!')

p 'Hello World!'.count('!')
p 'Hello World!'.count('l')
p 'Hello World!'.count('LW')
p 'Hello World!'.count('lw')
p 'Hello World!'.count('wl')
p 'Hello World!'.count('WL')
p 'Hello World!'.count('?')

def custom_count(string, characters)
  c = 0
  string.chars.each do |char|
    c += 1 unless char != characters
  end
  c
end
puts
puts
p custom_count('Hello World!', 'ls')

def another_custom_count(string, search_characters)
  count = 0
  string.each_char do |char|
    count += 1 if search_characters.include?(char)
  end
  count
end

puts "An amazing aardvak appeared".count('Aa')
puts another_custom_count("An amazing aardvak appeared", "Aa")
