# September, April, June, November => 30
# All the rest => 31
# February => 28/29
require 'date'

start_date = Time.local(1901)
end_date = Time.local(2000, 12, 31)
sunday_counter = 0

#p end_date - 86400

while end_date >= start_date
  if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"
    sunday_counter += 1
  end
  end_date -= 86400
end

p sunday_counter
