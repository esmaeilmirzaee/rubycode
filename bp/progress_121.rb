#!/bin/ruby

numbers = [1, 2, 3, 'Hello', 5, 6, nil, 7, 8, []]
numbers.each do |num|
  unless num.is_a?(Integer)
    next
  else
    puts "The square of #{num} is #{num ** 2}."
  end
end

numbers.each do |num|
  unless num.is_a?(Integer)
    break
  else
    puts "#{num}: #{num ** 2}"
  end
end


p [1, 2, 3].reverse
p ['A', 'B', 'C'].reverse
p [true, true, false, false, true].reverse

numbers = [5, 13, 1, -2, 8]
words = ['caterpillar', 'kangaroo', 'apple', 'Zebra']

p numbers.sort
p words.sort

p numbers.map { |a, b| a <=> b}
