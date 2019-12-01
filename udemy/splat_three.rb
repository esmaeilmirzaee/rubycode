def invoice options={}
  puts options[:project]
  puts options[:total]
  puts options[:hourse]
end

invoice project: "LeClima", total: "10h00"

