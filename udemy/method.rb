def showstring
  puts("Hello")
end

def showname(a_name)
  puts("Hello #{a_name}")
end

def return_name(first_name, second_name)
  return "Hello #{first_name} #{second_name}"
end

def return_name2 first_name, second_name
  "Hello #{first_name} #{second_name}"
end

showstring
showname("Esmaeil")
showname "Esmaeil"
puts(return_name("Esmaeil", "MIRZAEE"))
puts return_name2 "Esmaeil", "MIRZAEE"
