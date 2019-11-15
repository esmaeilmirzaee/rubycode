def dayIs(day)
  if day == 'Saturday' or day == 'Sunday'
    daytype = 'weekend'
  else
    daytype = 'weekday'
  end
  return daytype
end

day_one = 'Monday'
day_two = 'Saturday'
p "#{day_one} is a #{dayIs(day_one)}."
p "#{day_two} is a #{dayIs(day_two)}."

days = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
days.each do |day|
  p "#{day} is a #{dayIs(day)}"
end
