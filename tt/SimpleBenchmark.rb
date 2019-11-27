class SimpleBenchmark
  def self.go(how_many = 1, &block)
    puts "---------------- Benchmarking Started ----------------"
    start_time = Time.now
    puts "Start Time:\t#{start_time}\n\n"
    how_many.times do |a|
      print "."
      block.call
    end
    print "\n\n"
    end_time = Time.now
    puts "End Time:\t#{end_time}\n"
    puts "---------------- Benchmarking Finished ---------------"
    puts "Result:\t\t#{end_time - start_time} seconds."
  end
end
