hash_one = {
	'room1' => 'The Treasure Room',
	'room2' => 'The Throne Room',
	'loc1' => 'A Forest Glade',
	'loc2' => 'A Mountain Stream'
}

class X
  def initialize(name)
    @name = name
  end
end

x1 = X.new('my x_object')
hash_two = Hash.new('Some king of ring')
hash_two['treasure1'] = 'Silver ring'
hash_two['treasure2'] = 'Gold ring'
hash_two['treasure3'] = 'Ruby ring'
hash_two['treasure4'] = 'Sapphire ring'
hash_two[x1] = 'Diamond Ring'

hash_three = {
  'treasure_3' => 'Ruby ring',
  'treasure_1' => 'Silver ring',
  'treasure_4' => 'Sapphire ring',
  'treasure_2' => 'Gold ring'
}

p hash_two
p hash_one['room2']
p hash_two['treasure1']
p hash_one['unknown_room']
p hash_two['unknown_treasure']
p hash_one.default
p hash_two.default
hash_one.default = 'A mysterious place'
puts hash_one.default
p hash_two[x1]
