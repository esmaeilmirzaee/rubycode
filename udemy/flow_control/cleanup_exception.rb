def batten_hatches
  hatch_file = File.open("Hatches.txt")
  raise HatchError, "Door jammed" if door.jammed?
  true
rescue SystemCallError => error
  # handle system call errors
  false
else
  puts "Well done, no exceptions"
ensure
  hatch_file.close if hatch_file
end
