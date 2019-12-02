#!/bin/ruby env

word = "zebra"

if word.length >= 8
  puts "pass"
else
  puts "Re-enter password"
end

if word.include?('eb')
  puts "Yup"
end


def is_it_odd_or_even?(number)
  if number.odd?
    "The #{number} is odd."
  else
    "The #{number} is even."
  end
end

puts is_it_odd_or_even? 20
puts is_it_odd_or_even? 19

age = 30
ticket = "General Admission"
id = true

if age > 21 && ticket == "General Admission" && id
  puts "Congratulations, welcome to the show."
end

puts ticket.equal?("general admission")
puts ticket == "general admission"
puts ticket.equal?("General Admission")
puts ticket.equal?("General Admission").class

budget = 5
price = 10
mood = "Happy"

if budget > price || mood == "Happy"
  puts "I'm going to buy the item!"
end

if budget > price || mood.equal?("Happy")
  puts "I'll buy the item."
end

def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access granted, please proceed to Intelligence department."
  else
    puts "Access denied, #{name}."
  end
end

authenticate_agent("007", "James Bond", "Spy")

def meal_plan(time_of_week, time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "breakfast"
      'Cereal'
    elsif time_of_day == 'lunch'
      'Sandwich'
    elsif time_of_day == 'dinner'
      'Chicken Nuggets'
    end
  elsif time_of_week == "weekend"
    if time_of_day == 'breakfast'
      'French Toast'
    elsif time_of_day == 'lunch'
      'BBQ Chicken Pizza'
    elsif time_of_day == 'dinner'
      'Steak'
    end
  end
end


p meal_plan('weekday', 'lunch')
p meal_plan('weekday', 'dinner')
p meal_plan('weekend', 'breakfast')
