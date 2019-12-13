puts Time.new
p Time.new(2015)
p Time.new(2015, 5)
p Time.new(2015, 5, 18)
p Time.new(2015, 5, 18, 7)
p Time.new(2015, 5, 18, 7, 30)
p Time.new(2015, 5, 18, 7, 30, 12)

today = Time.now
p today

p today.month
p today.year
p today.day

p today.hour
p today.min
p today.sec

puts

p today.yday
p today.wday

puts

birtday = Time.new(1985, 12, 05)
p birtday.monday?
p birtday.tuesday?
p birtday.wednesday?
p today.thursday?
p today.friday?
p today.saturday?
p today.sunday?

p birtday.dst? # day saving time

puts

start_of_year = Time.new(2020, 1, 1)
p start_of_year
p start_of_year - 180
p start_of_year + 180
p start_of_year + (60 * 60)
p start_of_year + (60 * 60 * 12)
p start_of_year + (60 * 60 * 24)

puts

def find_day_of_year_by_number(number)
  current_date = Time.new(2016, 1, 1)
  number = number % 365 if number > 365
  until current_date.yday == number do
    current_date += (60 * 60 * 24)
  end
  current_date
end

p find_day_of_year_by_number(150)
p find_day_of_year_by_number(1000)

puts

birthday = Time.new(2019, 12, 13)
summer = Time.new(2019, 6, 21)
independence_day = Time.new(2019, 7, 4)
winter = Time.new(2019, 12, 21)
puts birthday == Time.now

puts independence_day.between?(summer, winter)

puts

puts winter.to_s
puts winter.ctime
p Time.new.to_a

today = Time.now
p today.strftime("%B, %b")
p today.strftime("%B, %b")

puts

require 'time'
puts Time.parse("2016-01-01") # removing require 'time' generates error
puts Time.parse("03-04-2000")
# puts Time.strptime("03-04-2000")
puts Time.strptime("03-04-2000", "%m-%d-%Y")
puts Time.strptime("03-04-2000", "%d-%m-%Y")

puts

File.open("novel.txt").each do |line|
  puts line.strip.capitalize
end

File.open("another_file.txt", "w") do |file|
  file.puts "I'm creating this from Ruby!"
  file.write "No line break here!"
  file.puts "Pretty cool"
end

File.open("another_file.txt", "w") { |file| file.puts "Blah Blah Blah" }
File.open("another_file.txt", "a") do |file|
  file.puts 'This will be appended to the end.'
  file.print "And one more line with file.print."
  file.write "Also one more line with file.write."
end

File.rename("another_file.txt", "another.txt")
# File.copy("another.txt", "another_file.txt")
File.delete("another_file.txt")

File.delete("another.txt") if File.exist?("another.txt")
