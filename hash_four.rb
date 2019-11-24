people = {jordan: 32, tiffany: 27, kristine: 10, heather: 29, esmaeil: 34}
people

people[:leann] = 42
people.invert
people2 = people.invert
p people2
people.merge(people2)
people.to_a
p people.each_key { |person| person.to_s } # does not work
people.delete(:esmaeil)
p people

