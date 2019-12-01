def batten_hatches
  hatch_list = API.request("/hatches")
rescue RuntimeError => error
  attempts ||= 0
  attempts += 1
  if attempts < 3
    puts "#{error.message}. Retrying request."
    retry
  else
    puts "Request failed."
    raise
  end
end
