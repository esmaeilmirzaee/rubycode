def launch
  batten_hatches
  light_seatbelt_sign
  true
rescue LightError
  puts "Lights not working, still launching"
  true
rescue StandardError => e
  puts e.message
  false
end
