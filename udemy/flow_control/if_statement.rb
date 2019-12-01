def can_launch?
  false
end

if can_launch?
  'launch'
else
  'wait'
end

number ||= Math::PI
message = if number > 10 then "Launching" else "Waiting" end
p message

launch if can_launch?

if number < 0
  puts 'Negative'
elsif number == 0
  puts 'Zero'
elsif number > 0
  puts 'Positive'
else
  puts 'Enter a number'
end

fuel_level ||= rand(100)

unless fuel_level < 25
  'launch'
end

puts 'launch' unless fuel_level < 25

puts can_launch? ? "launch" : "wait"
