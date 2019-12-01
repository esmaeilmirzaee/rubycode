#!/usr/bin/ruby
# encoding: us-ascii
puts "abc".encoding

puts 'serenity'
puts '\'serenity\''
puts 'backslash: \\'

puts %q('serenity' transport)
puts %q['serenity' transport]
puts %q{'serenity' transport}
puts %q<'serenity' transport>

puts %q*'serenity' transport*
puts %q/'serenity' transport/

puts "\100"
puts "\x40"

puts "\u20ac"
puts "\u{20ac a3 e3f}"

message = <<EOS
  There's no place I can be
  since I found serenity
EOS

puts message

message = <<-EOS
  There's no place I can be
  since I found serenity
  EOS

puts message

puts "Hello World"[1]
puts "Hello World"[1, 3]
puts "Hello World"['or']
a = "Hello Esmaeil"
a["Esmaeil"] = "MIRZAEE"
puts a

puts "Hello" * 5
puts "%05d" % 123
puts "%.5g" % 123.453676212788
puts "ab" + "cd"
a = "~ 5\u{20ac}"
puts a.chars
puts a.codepoints
puts a.bytes
puts "hello".upcase
puts "HELLO".downcase
puts "hello".capitalize
puts "    Hello this is sam    ".strip
puts "This is _Samuel_".gsub("_", "-")
puts "1, 2, 3, 4".split
puts "1, 2, 3, 4".split(',')


