full_name = lambda { |first, last| "#{first} #{last}" }
p full_name["Esmaeil", "MIRZAEE"]

details = ->(major, degree) {"#{degree} in #{major}"}
p details["PhD", "Computer Science"]
p details.call("BSc", "Financial Engineering")
