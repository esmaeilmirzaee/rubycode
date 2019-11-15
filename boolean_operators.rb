def dayIs(day)
  working_overtime = true
  if day == 'Saturday' or (day == "Sunday" and not working_overtime)
    daytype = 'holiday'
    puts 'Hurrah!'
  else
    daytype = 'working day'
  end
  daytype
end

def dayWas(day)
  working_overtime = true
  if day == 'Saturday' || (day == 'Sunday' and !working_overtime)
    daytype = 'It was a holiday'
    puts 'Hurrah!'
  else
    daytype = 'It was a working day'
  end
  daytype
end

days = %w[Saturday Sunday Monday Tuesday Wednesday Thursday Friday]

days.reverse_each do |day|
  p dayIs(day)
  p dayWas(day)
end
