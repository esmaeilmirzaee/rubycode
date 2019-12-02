#!.bin/ruby env

# equality v inequality with String
a = "Hello"
b = "hello"
c = "Hello"
d = "Hello "

# Every character matters
p a == b
p a == c
p a == d
p a == a
p a == a.upcase


p "Apple" < "Banana"
p "A" < "a"
p "Z" < "a"

p "hello" < "help"
p "hello" < "helo"


