puts /(\d+:\d+)(am|pm)/.match("12:01")
puts /(\d+:\d+)(am|pm)/.match("12:01am")
puts %r(\d+:\d+).match("10:20")
puts /\d+/ =~ "Levels 22"
puts /\d+/ !~ "Level 31"
str = "The 12 quick foxes jumped over 10 lazy dogs."
puts %r(\d+).match(str)
puts %r(\d+).match(str).pre_match
puts %r(\d+).match(str).post_match
puts str.scan(%r(\d+))
#puts str.scan(/\d+/).to_a.each { |x| sum + x.to_i}
puts str.scan(/\d+/).to_a.reduce(0) { |sum, x| sum + x.to_i}
puts "Esmaeil MIRZAEE".gsub(%r(([a-zA-Z]+) ([a-zA-Z]+)), '\2 \1')
puts "Esmaeil MIRZAEE".gsub(%r(([a-zA-Z]+) ([a-zA-Z]+)), "#{$2.capitalize} #{$1.capitalize}")
name = "Esmaeil MIRZAEE".scan(%r(([a-zA-Z]+) ([a-zA-Z]+)))
puts "#{name[0][1].capitalize} #{name[0][0].capitalize}"
pass = "Password: b1a12"
puts pass.gsub(/(Password:)\s+(\w+)/) { |match| "#{$1} " + "*" * $2.length}
