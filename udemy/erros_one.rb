begin
  puts 8/0
rescue
  puts "Rescued the error"
end


begin
  puts 9/0
rescue ZeroDivisionError => e
  puts "Error occured: #{e}"
end
