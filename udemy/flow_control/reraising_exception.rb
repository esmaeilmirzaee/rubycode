begin
  puts 'TODO: re-raising Exception'
rescue HatchError => err
  puts $!.message
  raise
end
