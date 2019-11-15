# Accessing and using hashes via keys and values

hash_one = {'key1'=>'val1', 'key2'=>'val2', 'key3'=>'val3', 'key4'=>'val4'}
hash__two = {'ket1'=>'val1', 'key2'=>'val2', 'key3'=>'val3', 'key4'=>'val4'}

puts 'keys...'
print "hash_one's keys: "
p hash_one.keys
print "hash_two's keys: "
p hash_two.keys
puts 'values...'
print "hash_one's values: "
p hash_one.value
print "hash_two's values: "
p hash_two.value
puts
p hash_one.keys & hash_two.keys

