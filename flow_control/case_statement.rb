distance_to_dock ||= 'noting'
p case distance_to_dock
when 'far away'
  'lander.maintain_thrust'
when 'coasting time'
  'lander.kill_thrust'
when 'collision imminent'
  'lander.reverse_thrust'
else
  'else'
end
