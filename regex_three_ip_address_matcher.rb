IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

def is_valid_ip_address? ip
  ip =~ IP_ADDRESS_REGEX
end

p is_valid_ip_address?("0.168.16.2") ? "Valid" : "Invalid"
p is_valid_ip_address?("192.168.16.999") ? "Valid" : "Invalid"
p is_valid_ip_address?("192.168.16.256") ? "Valid" : "Invalid"
p is_valid_ip_address?("192.168.16.255") ? "Valid" : "Invalid"
p is_valid_ip_address?("0.0.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address?("192.168.16.2") ? "Valid" : "Invalid"
