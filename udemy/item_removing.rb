numbers = ["une", 3, 4, "du", "throi", true, 34, 4, 3, 4, 5, 4]
p numbers.length
p numbers
numbers.delete("du")
p numbers.length
p numbers
numbers.delete_at(0)
p numbers.length
p numbers
#numbers.delete_at(0..3)
numbers.delete_if {|number| number.to_s.upcase == "UNE"}
p numbers.length
p numbers
