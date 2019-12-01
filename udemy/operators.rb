def dayIs(day)
  working_overtime = true
  if day == 'Saturday' or day == 'Sunday' and not working_overtime
    daytype = 'holiday'
    puts 'Hurrah!'
  else
    daytype = 'working day'
  end
  daytype
end

def dayCheck(day)
  working_overtime = true
  if day == 'Saturday' || day == 'Sunday' && !working_overtime
    daytype = 'holiday'
    puts "Hurrah!"
  else
    daytype = 'working day'
  end
  daytype
end
