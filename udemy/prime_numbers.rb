require 'prime'

prime_array = Prime.take_while { |p| p < 2_000_000 }
p prime_array.last
total_count = prime_array.inject { |sum, x| sum + x }
p total_count
p prime_array.inject(&:+)
