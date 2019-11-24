string = "The quick 12 brown foxes jumped over the 10 lazy dogs."

p string =~ /quick/
p string =~ /z/
p string =~ /X/i
p string =~ /\d+/ ? "Valid" : "Invalid"
p string.to_enum(:scan, /\d+/).map { Regexp.last_match }

