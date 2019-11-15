# Accessing and using hashes via keys and values

hash_one = {'key1'=>'val1', 'key2'=>'val2', 'key3'=>'val3', 'key4'=>'val4'}
hash_two = {'ket1'=>'val1', 'key2'=>'val2', 'key3'=>'val3', 'key4'=>'val4'}

puts 'keys...'
print "hash_one's keys: "
p hash_one.keys
print "hash_two's keys: "
p hash_two.keys
puts 'values...'
print "hash_one's values: "
p hash_one.values
print "hash_two's values: "
p hash_two.values
puts
p hash_one.keys & hash_two.keys
p hash_one.values & hash_two.values
p hash_one.keys + hash_two.keys
p hash_one.values - hash_two.values
p hash_one.keys << hash_two.keys
p (hash_one.keys << hash_two.keys)
p (hash_one.keys << hash_two.keys).flatten
p (hash_one.keys << hash_two.keys).flatten.reverse
