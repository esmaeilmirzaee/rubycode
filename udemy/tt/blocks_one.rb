def header(&block)
  puts "This is our header"
  block.call
  puts "This is our footer"
rescue
  puts "This is where we would rescue an error."
ensure
  puts "I'am an inside of the ensure block."
end

header do
  puts "This is the body of the block."
  raise "Thisis an error."
end
