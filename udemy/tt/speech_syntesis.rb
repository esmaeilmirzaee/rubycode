class Speech
	def initialize
		print "What is the speech name? "
		@title = gets.chomp
		@lines = Array.new
		while add_line
			puts "Line added."
		end
	end

	def title
		@title
	end

	def add_line
		puts "Add a line: (blank line to exit)."
		line = gets.chomp
		@lines.push line 
		if line.length > 0
			@lines << line
			#line
		else 
			return nil
		end
		#line
	end

  def each(&block)
    @lines.each { |line| yield line }
  end

end

speech = Speech.new
speech.each do |line|
  puts "[#{speech.title}] #{line}"
end
