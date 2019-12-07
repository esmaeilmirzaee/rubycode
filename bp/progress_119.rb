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
end

def custom_min(arr)
  # return the minimum value in the array
end
