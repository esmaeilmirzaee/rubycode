arr = Array.new
puts arr

arr.push(1)
arr.push('a')
arr.push 2.3
puts arr

arr.pop
puts arr

arr << 2 << 3 << 4 << 2.1 << "Hello"
arr.delete_if { |item| item.class == String }
puts arr
#puts "arr.pop: #{arr.pop}"
puts arr.first
puts arr.last
puts arr.at(2)
puts arr.at(-1)
puts arr[-1]
puts arr.slice(1, 3)
puts arr.sort
puts arr.sort.reverse
puts arr.sort { |a, b| b <=> a }
dim_arr = [[1, 2], 3, 4, [5, [6], 7], 8, 9, 'a']
puts dim_arr
puts dim_arr.flatten
puts arr.all? { |item| item > 5 }
puts arr.any? { |item| item < 5 }
puts arr.select { |item| item < 2 }
puts arr.reject { |item| item > 2 }
puts arr.map { |item| item * 1.3 }
puts arr.collect { |item| item * -1 }
