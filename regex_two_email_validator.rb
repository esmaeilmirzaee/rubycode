VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email? email
  email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("esmaeilmirzaee@g.c") ? "valid" : "Invalid"
p is_valid_email?("esmaeilmirzaee@g.c") ? "Valid" : "Invalid"
p is_valid_email?("esmaeilmirzaee@g.d") ? "Valid" : "Invalid"
p is_valid_email?("esmaeilmirzaee@g.c") ? "Valid" : "Invalid"
p is_valid_email?("esmaeil-mirxee@h.z") ? "Valid" : "Invalid"
p is_valid_email?("esmaeil.mirzee@g.z") ? "Valid" : "Invalid"
p is_valid_email?("esmaeil_mirzee@t.c") ? "Valid" : "Invalid"
p is_valid_email?("esmaeil+mirzee@g.c") ? "Valid" : "Invalid"
