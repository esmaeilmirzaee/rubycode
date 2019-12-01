def handle(sample)
  result = sample.process
  throw(:abort, result.message) if result.code != :ok
  puts result.message
  sample.store
end

result = catch(:abort) do
  probes.each do |probe|
    while sample = probe.get_sample
      handle(sample)
    end
  end
  "All samples processed"
end

puts result
