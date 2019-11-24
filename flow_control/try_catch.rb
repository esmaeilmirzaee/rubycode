result = catch :abort do
  probes.each do |probe|
    while sample = probe.get_sample
      result = sample.process
      throw :abort, result.message if result.code != :ok
      puts result.message
      sample.store
    end
  end
  "All samples processed"
end

puts result
