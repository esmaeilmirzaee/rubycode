def dayIs(day)
  working_overtime = true
  if day == 'Saturday' or (day == 'Sunday' and not working_overtime)
    daytype = 'weekend'
    daytype += ', holiday'
  else
    daytype = 'weekday'
    daytype += ', working day'
  end
  daytype
end

day_one = 'Monday'
day_two = 'Saturday'
p "#{day_one} is a #{dayIs(day_one)}."
p "#{day_two} is a #{dayIs(day_two)}."

days = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
days.each do |day|
  p "#{day} is a #{dayIs(day)}"
end
