#!/bin/ruby env

def fizzbuzz(number)
  # if the number is divisible by 3, output fizz
  # if the number is divisible by 5, output buzz
  # if the number is divisible by both 3 and 5, output Fizzbuzz

  number.times do |n|
    case
    when (n+1).%(3) == 0 && (n+1).%(5) == 0
      puts 'fizzbuzz'
    when (n+1).%(3) == 0
      puts 'fizz'
    when (n+1).%(5) == 0
      puts 'buzz'
    end
  end
end

fizzbuzz(4)
fizzbuzz(5)
fizzbuzz(16)
